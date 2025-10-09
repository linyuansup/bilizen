use std::{env, thread};
use std::fs::{self, File};
use std::io;
use std::path::Path;
use std::process::{exit, Command};
use zip::ZipArchive;

fn main() {
    println!("Bilizen 更新程序启动...");
    thread::sleep(std::time::Duration::from_millis(1000));

    let current_exe = match env::current_exe() {
        Ok(exe_path) => exe_path,
        Err(e) => {
            eprintln!("无法获取当前程序路径: {}", e);
            exit(1);
        }
    };

    let current_dir = match current_exe.parent() {
        Some(dir) => dir,
        None => {
            eprintln!("无法获取当前程序目录");
            exit(1);
        }
    };

    println!("当前运行目录: {}", current_dir.display());

    let zip_path = current_dir.join("bilizen-latest.zip");

    if !zip_path.exists() {
        eprintln!("未找到更新文件: {}", zip_path.display());
        exit(1);
    }

    println!("找到更新文件: {}", zip_path.display());

    if let Err(e) = extract_zip(&zip_path, current_dir) {
        eprintln!("解压文件失败: {}", e);
        exit(1);
    }

    println!("文件解压完成");

    let bilizen_exe = current_dir.join("bilizen.exe");

    if !bilizen_exe.exists() {
        eprintln!("未找到 bilizen.exe: {}", bilizen_exe.display());
        exit(1);
    }

    println!("启动 bilizen.exe...");

    match Command::new(&bilizen_exe).spawn() {
        Ok(_) => {
            println!("bilizen.exe 启动成功，更新程序即将退出");
        }
        Err(e) => {
            eprintln!("启动 bilizen.exe 失败: {}", e);
            exit(1);
        }
    }

    exit(0);
}

fn extract_zip(zip_path: &Path, extract_to: &Path) -> Result<(), Box<dyn std::error::Error>> {
    let file = File::open(zip_path)?;
    let mut archive = ZipArchive::new(file)?;

    for i in 0..archive.len() {
        let mut file = archive.by_index(i)?;
        let outpath = match file.enclosed_name() {
            Some(path) => extract_to.join(path),
            None => continue,
        };
        if file.name() == "update.exe" {
            continue;
        }

        if file.name().ends_with('/') {
            println!("创建目录: {}", outpath.display());
            fs::create_dir_all(&outpath)?;
        } else {
            println!("解压文件: {}", outpath.display());

            if let Some(p) = outpath.parent() {
                if !p.exists() {
                    fs::create_dir_all(p)?;
                }
            }

            let mut outfile = File::create(&outpath)?;
            io::copy(&mut file, &mut outfile)?;
        }

        #[cfg(unix)]
        {
            use std::os::unix::fs::PermissionsExt;
            if let Some(mode) = file.unix_mode() {
                fs::set_permissions(&outpath, fs::Permissions::from_mode(mode))?;
            }
        }
    }

    Ok(())
}

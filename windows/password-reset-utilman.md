# Windows - Reset a password by booting from an ISO (Utilman) / Windows - ISO ile Açılıp Parola Sıfırlama

## 🇹🇷 Türkçe

⚠️ Yalnızca sahibi olduğunuz/yetkili olduğunuz makinelerde kullanın. ISO ile açıp Onar → Sorun Giderme → Komut İstemi'ne girin, `Utilman.exe`'yi `cmd.exe` ile değiştirin, yeniden başlatıp kilit ekranında Erişilebilirlik simgesine tıklayın ve `net user` ile parolayı değiştirin. **İşiniz bitince orijinal `Utilman.exe`'yi geri koyun**, aksi halde kilit ekranından herkes yönetici komut satırı açabilir.

## 🇬🇧 English

⚠️ Use only on machines you own or are authorized to administer. Boot from an ISO, go to Repair → Troubleshoot → Command Prompt, replace `Utilman.exe` with `cmd.exe`, reboot, click the Accessibility icon on the lock screen and change the password with `net user`. **Restore the original `Utilman.exe` afterwards**, otherwise anyone can open an admin prompt from the lock screen.

## Commands / Komutlar

```bat
c:
cd Windows\System32
ren Utilman.exe Utilman.exe.old
copy cmd.exe Utilman.exe
:: after reboot, on the lock screen (Accessibility icon):
net user USERNAME NewPassword
:: afterwards, from recovery media, restore:
copy /y Utilman.exe.old Utilman.exe
```

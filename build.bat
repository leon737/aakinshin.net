rmdir "ru/_site" /s /q
rmdir "en/_site" /s /q
bin\Pretzel.exe bake ru
xcopy "ru/_site" "en/_site" /i /s /y
xcopy "_files/data" "en/_site/data" /i /s /y
xcopy "_files/ru" "en/_site/ru" /i /s /y
xcopy "_files/en" "en/_site/en" /i /s /y
bin\Pretzel.exe taste en
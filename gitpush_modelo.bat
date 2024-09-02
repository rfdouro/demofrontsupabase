if exist .git\ (
 echo Ok
) else (
 git init
)

@echo off
set /p messComit=Qual a mensagem de commit?: 
echo ok %dmessComit%

git add -A
git commit -m "codigo: PUSH %messComit%"
git push -f https://<TOKEN>@github.com/<USUARIOGITHUB>/<REPOSITORIO>.git master

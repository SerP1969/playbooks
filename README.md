Это примеры ansible playbooks, созданные и проверенные Коноваловым С.П.:

1.Add_NMcli_ether.yml - добавляет NetworkManager connection на указанный интерфейс в режиме manual (тестировал на RHEL9.5).
             * Требует установки последней версии колекции - ansible-galaxy collection install community.general --force

2.Add_IP_Netplan_Ubuntu.yml - добавляет 2 IP-адреса на Ubuntu 24.04 на eth0 интерфейс netplan-ом.

3.Update_RH.yml - обновляет пакеты на RHEL. Есть варианты - без пакетов Kernel, только security, только bug-fix.

4.Check_need_reboot_RH.yml - проверяет, нужен ли ребут для RHEL, рестартует хост если надо + различные варианты ожиданий.

5.Change_config_sshd.yml - меняет порт ssh и важные настройки sshd (для root и users), открывает порт через firewall и SELinux.
    *Не забыть после изменить ansible_port: в ini-файле.

6.Deploy_fail2ban_RH.yml - подключает epel-repo на RHEL, устанавливает, деплоит для sshd и авто-стартует fail2ban сервис.
    *Проверка ssh jail (на 10мин.): fail2ban-client status sshd
    *Разбанить можно так:           fail2ban-client set sshd unbanip IP-ADDRESS

7.Add_new_User_with_sudo.yml - добавляет на RH-хост не привилигированного/привилигированного (с ограничениями или без) user-a,
    назначает ему устаревший пароль, создаёт 2 файла в sydoers.d каталоге, закидывает пользователю ssh-public key.

8.Change_pwd_root.yml - меняет пароль root-a. Делает его устаревшим (требует сменить при 1м логине).

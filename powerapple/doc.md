== 导入脚本研究

```bash

git config --global user.email 'aotianlong@gmail.com'
git config --global user.name 'aotianong'

apt update
apt install default-libmysqlclient-dev/stable
gem install php_serialize miro mysql2 httparty
```

cd workspace/discourse
ruby script/import_scripts/discuz_x.rb



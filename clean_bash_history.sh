#clean bash history of duplicates
mv ~/.bash_history ~/.bash_history_org

cat ~/.bash_history_org | awk '!x[$0]++' >> ~/.bash_history

echo "Wanna delete .bash_history_org ?"
read n

if [[ $n == y ]]; then
  rm ~/.bash_history_org
fi


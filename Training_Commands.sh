#!/bin/bash 

#Start oceand
$HOME/ocean/src/ocean-cli -datadir=$HOME/goldnode_main -v 

#Check for oceand running process
pgrep oceand 

#OLD Check for oceand running process - remove the process entry of checking
ps -ef | grep -w oceand | grep -v grep

#OLD Check for oceand running process - remove the process entry of checking
ps -ef | grep oceand | grep -v grep | awk '{ print $2 }'

#OLD Kill oceand process (also by removing grep)
kill $(ps -ef | grep oceand | grep -v grep | awk '{ print $2 }')

#Returns oceand program id only
pgrep oceand

#Variable
Blockcount=$($HOME/ocean/src/ocean-cli -datadir=$HOME/goldnode_main/ getblockcount)

#User entry and repeat
read poop
echo $poop

# Fine folders excluding hidden
find . -type d | grep -v '/\.'



#Hide output (add to end of command "> /dev/null 2>&1")
if pgrep -x "$process" | grep -v pgrep > /dev/null 2>&1


#If variable not in range then 
menuid=x
menucount=18
if (($menuid >= 1 && $menuid <= $menucount)); then echo "in " ; else echo "out" ; fi


cd CryptopoTools
find $(pwd) -name "*.sh" 
# cryptopolys-MacBook-Pro-2:~ cryptopoly$ cd CryptopoTools
# cryptopolys-MacBook-Pro-2:CryptopoTools cryptopoly$ find $(pwd) -name "*.sh" 
/Users/cryptopoly/CryptopoTools/SandBox.sh
/Users/cryptopoly/CryptopoTools/Training_Commands.sh
/Users/cryptopoly/CryptopoTools/Command_Launcher.sh
/Users/cryptopoly/CryptopoTools/Running_Process_Check.sh
/Users/cryptopoly/CryptopoTools/Ultrabox.sh
/Users/cryptopoly/CryptopoTools/Python_Shell_Command_Launcher_Suite.sh
/Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/App_Level_3/3_TEST_SHELL.sh
/Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/2_TEST_SHELL.sh
/Users/cryptopoly/CryptopoTools/App_Level_1/1_TEST_SHELL.sh
 

cd CryptopoTools
find $(pwd) \( -name "*.sh" -o -name "*.command" -o -name "*.desktop" -o -name "*.py" \)
# cryptopolys-MacBook-Pro-2:~ cryptopoly$ cd CryptopoTools
# cryptopolys-MacBook-Pro-2:CryptopoTools cryptopoly$ find $(pwd) \( -name "*.sh" -o -name "*.command" -o -name "*.desktop" -o -name "*.py" \)
/Users/cryptopoly/CryptopoTools/SandBox.sh
/Users/cryptopoly/CryptopoTools/Training_Commands.sh
/Users/cryptopoly/CryptopoTools/Command_Launcher.sh
/Users/cryptopoly/CryptopoTools/Running_Process_Check.sh
/Users/cryptopoly/CryptopoTools/Ultrabox.sh
/Users/cryptopoly/CryptopoTools/Python_Shell_Command_Launcher_Suite.sh
/Users/cryptopoly/CryptopoTools/App_Level_1/1_TEST_DESKTOP.desktop
/Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/2_TEST_COMMAND.command
/Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/App_Level_3/3_TEST_SHELL.sh
/Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/App_Level_3/3_TEST_COMMAND.command
/Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/App_Level_3/3_TEST_PYTHON.py
/Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/App_Level_3/3_TEST_DESKTOP.desktop
/Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/2_TEST_DESKTOP.desktop
/Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/2_TEST_PYTHON.py
/Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/2_TEST_SHELL.sh
/Users/cryptopoly/CryptopoTools/App_Level_1/1_TEST_COMMAND.command
/Users/cryptopoly/CryptopoTools/App_Level_1/1_TEST_PYTHON.py
/Users/cryptopoly/CryptopoTools/App_Level_1/1_TEST_SHELL.sh

# Full path indexed!!!
find $(pwd) \( -name "*.sh" -o -name "*.command" -o -name "*.desktop" -o -name "*.py" \) | awk '{ print ++lvalue, $1 }'
# cryptopolys-MacBook-Pro-2:~ cryptopoly$ cd CryptopoTools
# cryptopolys-MacBook-Pro-2:CryptopoTools cryptopoly$ find $(pwd) \( -name "*.sh" -o -name "*.command" -o -name "*.desktop" -o -name "*.py" \) | awk '{ print ++lvalue, $1 }'
1 /Users/cryptopoly/CryptopoTools/SandBox.sh
2 /Users/cryptopoly/CryptopoTools/Training_Commands.sh
3 /Users/cryptopoly/CryptopoTools/Command_Launcher.sh
4 /Users/cryptopoly/CryptopoTools/Running_Process_Check.sh
5 /Users/cryptopoly/CryptopoTools/Ultrabox.sh
6 /Users/cryptopoly/CryptopoTools/Python_Shell_Command_Launcher_Suite.sh
7 /Users/cryptopoly/CryptopoTools/App_Level_1/1_TEST_DESKTOP.desktop
8 /Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/2_TEST_COMMAND.command
9 /Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/App_Level_3/3_TEST_SHELL.sh
10 /Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/App_Level_3/3_TEST_COMMAND.command
11 /Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/App_Level_3/3_TEST_PYTHON.py
12 /Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/App_Level_3/3_TEST_DESKTOP.desktop
13 /Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/2_TEST_DESKTOP.desktop
14 /Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/2_TEST_PYTHON.py
15 /Users/cryptopoly/CryptopoTools/App_Level_1/App_Level_2/2_TEST_SHELL.sh
16 /Users/cryptopoly/CryptopoTools/App_Level_1/1_TEST_COMMAND.command
17 /Users/cryptopoly/CryptopoTools/App_Level_1/1_TEST_PYTHON.py
18 /Users/cryptopoly/CryptopoTools/App_Level_1/1_TEST_SHELL.sh

# Just filename indexed!!!
find $(pwd) \( -name "*.sh" -o -name "*.command" -o -name "*.desktop" -o -name "*.py" \) -exec basename {} \; | awk '{ print ++lvalue, $1 }'
# cryptopolys-MacBook-Pro-2:~ cryptopoly$ cd CryptopoTools
# cryptopolys-MacBook-Pro-2:~ cryptopoly$ find $(pwd) \( -name "*.sh" -o -name "*.command" -o -name "*.desktop" -o -name "*.py" \) -exec basename {} \; | awk '{ print ++lvalue, $1 }'
1 SandBox_Python_Shell_Command_Launcher_Suite.sh
2 SandBox.sh
3 Training_Commands.sh
4 Command_Launcher.sh
5 Running_Process_Check.sh
6 UltraBox.sh
7 Python_Shell_Command_Launcher_Suite.sh
8 1_TEST_DESKTOP.desktop
9 2_TEST_COMMAND.command
10 3_TEST_SHELL.sh
11 3_TEST_COMMAND.command
12 3_TEST_PYTHON.py
13 3_TEST_DESKTOP.desktop
14 2_TEST_DESKTOP.desktop
15 2_TEST_PYTHON.py
16 2_TEST_SHELL.sh
17 1_TEST_COMMAND.command
18 1_TEST_PYTHON.py
19 1_TEST_SHELL.sh

#Exclude paths
find $(pwd) -not -path '*/\.*'


ls -lh *.sh *.command | awk '{ print ++lvalue, $9 }'
1 Command_Launcher.sh
2 Python_Shell_Command_Launcher_Suite.sh
3 Running_Process_Check.sh
4 SandBox.sh
5 Training_Commands.sh
6 Ultrabox.sh


ls -lhihR | egrep ".command" | awk '{ print ++lvalue, $10 }'
1 1_TEST_COMMAND.command
2 2_TEST_COMMAND.command
3 3_TEST_COMMAND.command


ls -lhihR | egrep ".py|.sh|.command|.desktop" | awk '{ print ++lvalue, $10 }'
1 Command_Launcher.sh
2 Python_Shell_Command_Launcher_Suite.sh
3 Running_Process_Check.sh
4 SandBox.sh
5 Training_Commands.sh
6 Ultrabox.sh
7 1_TEST_COMMAND.command
8 1_TEST_DESKTOP.desktop
9 1_TEST_PYTHON.py
10 1_TEST_SHELL.sh
11 2_TEST_COMMAND.command
12 2_TEST_DESKTOP.desktop
13 2_TEST_PYTHON.py
14 2_TEST_SHELL.sh
15 3_TEST_COMMAND.command
16 3_TEST_DESKTOP.desktop
17 3_TEST_PYTHON.py
18 3_TEST_SHELL.sh


ls -lihR | egrep ".py|.sh|.command|.desktop"
32636955 -rwxr-xr-x@ 1 cryptopoly  staff   744B 24 Sep 18:02 Command_Launcher.sh
32620330 -rwxr-xr-x@ 1 cryptopoly  staff   620B 24 Sep 13:51 Python_Shell_Command_Launcher_Suite.sh
32620318 -rwxr-xr-x@ 1 cryptopoly  staff   268B 23 Sep 23:15 Running_Process_Check.sh
32620331 -rwxr-xr-x@ 1 cryptopoly  staff   392B 24 Sep 18:07 SandBox.sh
32620332 -rwxr-xr-x@ 1 cryptopoly  staff   3.4K 24 Sep 18:08 Training_Commands.sh
32620333 -rwxr-xr-x@ 1 cryptopoly  staff   896B 24 Sep 19:17 Ultrabox.sh
33114682 -rwxr-xr-x@ 1 cryptopoly  staff    39B 24 Sep 17:48 1_TEST_COMMAND.command
33118045 -rwxr-xr-x@ 1 cryptopoly  staff    40B 24 Sep 13:41 1_TEST_DESKTOP.desktop
33118048 -rwxr-xr-x@ 1 cryptopoly  staff    40B 24 Sep 13:42 1_TEST_PYTHON.py
33117675 -rwxr-xr-x@ 1 cryptopoly  staff    38B 24 Sep 13:42 1_TEST_SHELL.sh
33589898 -rwxr-xr-x@ 1 cryptopoly  staff    40B 24 Sep 13:44 2_TEST_COMMAND.command
33589899 -rwxr-xr-x@ 1 cryptopoly  staff    40B 24 Sep 13:44 2_TEST_DESKTOP.desktop
33589900 -rwxr-xr-x@ 1 cryptopoly  staff    40B 24 Sep 13:44 2_TEST_PYTHON.py
33589897 -rwxr-xr-x@ 1 cryptopoly  staff    38B 24 Sep 13:44 2_TEST_SHELL.sh
33589904 -rwxr-xr-x@ 1 cryptopoly  staff    40B 24 Sep 13:44 3_TEST_COMMAND.command
33589905 -rwxr-xr-x@ 1 cryptopoly  staff    40B 24 Sep 13:44 3_TEST_DESKTOP.desktop
33589906 -rwxr-xr-x@ 1 cryptopoly  staff    40B 24 Sep 13:44 3_TEST_PYTHON.py
33589903 -rwxr-xr-x@ 1 cryptopoly  staff    38B 24 Sep 13:44 3_TEST_SHELL.sh

#Hide command output in bash
{
  /your/first/command
  /your/second/command
} &> /dev/null


# Check for open process
clear
echo "Which process would you like to check?"
read process
if pgrep -x "$process" | grep -v pgrep >&-
then
  echo -e
  echo "The process" "$process" "is running"
  echo -e
else
  echo -e
  echo "The" "$process" "process is not running"
  echo -e
fi




#Input/Entry Variables
echo "Enter your FirstName LastName.."
read firstname lastname
echo "Hello $firstname ! Heard that your last name is $lastname."


#Infinite Number Loop
counter=1
while [ $counter -le 10000000000 ]
do
  echo $counter
  ((counter++))
done
echo All done

# Output json from URL Unedited
curl -s https://s3.eu-west-1.amazonaws.com/gtsa-mapping/map.json



# Output json from URL Edited
curl -s https://s3.eu-west-1.amazonaws.com/gtsa-mapping/map.json |\
	jq '.'


# Return lines from file
cat ./map.json | grep assets


# Output full json
jq '.' ./map.json


# Output 1st Level
jq '.n' /map.json
#2


# Output 1st Level Values
jq '.n,.m,.height' /map.json
#2
#3
#3303


# Output just data under assets
jq '.assets' /map.json


# Output just data under assets excluding bar number
jq '.[] | .' /map.json




Map.json
{
  "n": 2,
  "m": 3,
  "assets": {
    "1": {
      "ref": "031037-2019-PAMP",
      "mass": 389.142,
      "tokenid": "322b36709d8c74c3225e943faa14c6abda1e6d8dc479a46cd8e24c1409eba3eb"
    },
    "2": {
      "ref": "030727-2019-PAMP",
      "mass": 405.92,
      "tokenid": "50e4a961ace0d39646801b299ae37da9d1538529252edad38c4da77cd826cc6f"
    },
    "3": {
      "ref": "035696-2019-PAMP",
      "mass": 401.337,
      "tokenid": "60a62454afc1e2a68c242b0d4cfe4b57ad2c6bd68c57016fa9f3b1579c520351"
    },
    "4": {
      "ref": "035697-2019-PAMP",
      "mass": 409.359,
      "tokenid": "fcb3c3e863190fc982f6b74f89cedf089d9df32a8f8962e3314f506858e15fad"
    }
  },
  "sigs": {
    "2": "HIQ/SqrSd0EcWz8HzYOYuDdqMGM54JcUYgEQqVhhYoInSUpTNtvIik1FUHZjG8EecXp0pX5zpMFL4rg8lz675Yc=",
    "1": "G1yyYlKOZKeqgGv/jaKbjFIJbBYcA/jdMsJzOlWpGj0RCtU0+3s1i8jsgVO3lQFbQtm/uAKY4mvoG87tD0BH1LA="
  },
  "time": 1568906123.897163,
  "height": 3303
}


# scriptography
This repo contains scripts written by me for my personal convenient usage. If problems are relatable, you too can use them right away.

---

# push

For know-hows about the script,  do `py push.py --help` until I make a separate reference for them.

---

# WTA

Well, that's what I call it. Couldn't come up with a better name. Anyways, this script works with selenium and chrome webdriver. 

## WTA_v1.0.0

For running it, you should have python3 and selenium installed and latest version of Chrome webdriver downloaded. 

**Note that you got to change path to** `chromedrive.exe`  **and modify** `targets.py` **accordingly before executing the script.**

---

---

## WTA_v1.2.0

### linuxBETA

If you're on linux, you should run [this](https://github.com/evi1haxor/scriptography/tree/master/WTA_v1.2.0/linuxBETA) script. Simply download the _linuxBETA_ directory and then open your terminal in that downloaded directory.

Now if you don't have default system settings for storing downloads, then you should specify the complete path (as illustrated below) where the downloads gets stored in your system. 

```bash
python3 main.py -p "THE\\PATH" -c *** -m "THE MESSAGE"
```



<sub>_Replace `***` with your target counts._</sub> <br>

If you've never touched your system settings, you can simply execute the command without `-p` flag ExampleGiven-

```bash
python3 main.py -c *** -m "THE MESSAGE"
```

**IF THE DESCRIBED WAY ISN'T MAKING YOU THROUGH, THEN YOU MAY WANT TO TRY WITH MANUAL SETUP AS EXPLAINED BELOW**

---

### winBETA

Windows guys have to do a little more manual work than linux ones. 

- Download [chromedriver](https://chromedriver.storage.googleapis.com/2.45/chromedriver_win32.zip)
- Download [script directory](https://github.com/evi1haxor/scriptography/tree/master/WTA_v1.2.0/winBETA)
- Open command line prompt in that downloaded folder
- Execute following with usual meanings as explained above. Just put `wta` in place of `python3 main.py`

```bash
wta -p "THE\\PATH" -c *** -m "THE MESSAGE"
```



- Replace `THE\\PATH` with the absolute path to `chromedriver.exe` 
- **ProTip**: You should divide directories with `\\` while writing paths.


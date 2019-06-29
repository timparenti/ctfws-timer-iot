local modload = "cron", "cron.entry", "schedule", "unschedule",
  "gpio", "HIGH", "LOW", "ALARM_AUTO",
  "mqtt.socket",
  "math", "floor", "unregister",
  "error", "self",
  "crypto.hash", "ws2812.buffer",
  "max", "rep", "get"

local ctfws = "ctfws", "ctfws_lcd", "ctfws_tmr",
  "setupD", "roundD", "rounds", "startT", "endT", "flagsN", "flagsR", "flagsY",
    "ter", "tercfg",
  "times", "config", "deconfig", "setFlags", "setEndTime", "myTeam", "setTerritory",
  "GAME NOT CONFIGURED!",
  "GAME OVER @ %02d:%02d", "GAME OVER",
  "START TIME IN FUTURE",
  "TIME IS UP",
  "CTFWS",
  "r", "y"

local lcdpreload =
  "define_char",
  "lcd", "mtmr", "ftmr", "fatmr", "dl_elapsed", "dl_elapsed", "dl_remain", "dl_round",
  "attnState", "reset", "drawTimes", "drawFlags", "drawMessage", "drawFlagsMessage",
  "% 4d:%02d.%d", "  %02d:%02d.%d", "%02d.%d", "%d", "%-20s",
  "%d\000: %s=%s %s=%s", "%d\000: %s=%s%s",
  " CMUKGB CTFWS TIMER ", "                    ",
  "GAME      :",
  "SETUP     :",
  "START IN  :",
  "GAME END  :",
  "JB#   %d/%d :",
  "JB# %2d/%2d :",
  "R", "Y"

local init3load =
  "flg_tmr", "lastMsgTime", "mqttUser", "msg_tmr", "fla_tmr",
  "dprint", "mqc", "publish",
  "nwfmqtt.conf",
  "* * * * *",
  "ctfws/game/config",
  "ctfws/game/endtime",
  "ctfws/game/flags",
  "ctfws/game/message",
  "ctfws/game/message/jail",
  "none",
  "^%s*(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%S+).*$",
  "^%s*(%d+)%s+(-?%d+)%s+(-?%d+).*$",
  "^%s*(%d+)%s*(.*)$",
  "^%s*%?.*$",
  "^ctfws/game/message",
  "CONNECTING...", "MQTT", "MQTT CONNECTED", "MQTT Disconnected", "DHCP %s",
  "WIFI %s", "NET", "Trying reconn...",
  "alive", "beat %d %s"

#
# This file is part of LSPosed.
#
# LSPosed is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# LSPosed is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with LSPosed.  If not, see <https://www.gnu.org/licenses/>.
#
# Copyright (C) 2021 LSPosed Contributors
#

MODDIR=${0%/*}
MODSDIR=$(dirname "$MODDIR")
if [ -d "$MODSDIR/riru_lsposed" ] && [ -d "$MODSDIR/lsposed" ]; then
  if [ -f "$MODSDIR/riru_lsposed/remove" ] && [ -f "$MODSDIR/lsposed/remove" ]; then
    rm -rf /data/adb/lspd
  fi
else
  rm -rf /data/adb/lspd
fi

rm -rf /data/adb/riru/modules/lspd

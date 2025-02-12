

https://www.freedesktop.org/software/fontconfig/webfonts/
cabextract -L -d /dir/path/ $filepath

#######################

#----------------------------------------------------------------

w_metadata calibri fonts \
title="MS Calibri font" \
publisher="Microsoft" \
year="2007" \
media="download" \
file1="PowerPointViewer.exe" \
installed_file1="${W_FONTSDIR_WIN}/calibri.ttf"

load_calibri()
{
helper_pptfonts "CALIBRI*.TTF"
w_register_font calibri.ttf "Calibri"
w_register_font calibrib.ttf "Calibri Bold"
w_register_font calibrii.ttf "Calibri Italic"
w_register_font calibriz.ttf "Calibri Bold Italic"
}

#----------------------------------------------------------------

w_metadata cambria fonts \
title="MS Cambria font" \
publisher="Microsoft" \
year="2009" \
media="download" \
file1="PowerPointViewer.exe" \
installed_file1="${W_FONTSDIR_WIN}/cambria.ttc"

load_cambria()
{
helper_pptfonts "CAMBRIA*.TT*"
w_register_font cambria.ttc "Cambria & Cambria Math"
w_register_font cambriab.ttf "Cambria Bold"
w_register_font cambriai.ttf "Cambria Italic"
w_register_font cambriaz.ttf "Cambria Bold Italic"
}

#----------------------------------------------------------------

w_metadata candara fonts \
title="MS Candara font" \
publisher="Microsoft" \
year="2009" \
media="download" \
file1="PowerPointViewer.exe" \
installed_file1="${W_FONTSDIR_WIN}/candara.ttf"

load_candara()
{
helper_pptfonts "CANDARA*.TTF"
w_register_font candara.ttf "Candara"
w_register_font candarab.ttf "Candara Bold"
w_register_font candarai.ttf "Candara Italic"
w_register_font candaraz.ttf "Candara Bold Italic"
}

#----------------------------------------------------------------

w_metadata consolas fonts \
title="MS Consolas console font" \
publisher="Microsoft" \
year="2011" \
media="download" \
file1="PowerPointViewer.exe" \
installed_file1="${W_FONTSDIR_WIN}/consola.ttf"

load_consolas()
{
helper_pptfonts "CONSOLA*.TTF"
w_register_font consola.ttf "Consolas"
w_register_font consolab.ttf "Consolas Bold"
w_register_font consolai.ttf "Consolas Italic"
w_register_font consolaz.ttf "Consolas Bold Italic"
}

#----------------------------------------------------------------

w_metadata constantia fonts \
title="MS Constantia font" \
publisher="Microsoft" \
year="2009" \
media="download" \
file1="PowerPointViewer.exe" \
installed_file1="${W_FONTSDIR_WIN}/constan.ttf"

load_constantia()
{
helper_pptfonts "CONSTAN*.TTF"
w_register_font constan.ttf "Constantia"
w_register_font constanb.ttf "Constantia Bold"
w_register_font constani.ttf "Constantia Italic"
w_register_font constanz.ttf "Constantia Bold Italic"
}

#----------------------------------------------------------------

w_metadata corbel fonts \
title="MS Corbel font" \
publisher="Microsoft" \
year="2009" \
media="download" \
file1="PowerPointViewer.exe" \
installed_file1="${W_FONTSDIR_WIN}/corbel.ttf"

load_corbel()
{
helper_pptfonts "CORBEL*.TTF"
w_register_font corbel.ttf "Corbel"
w_register_font corbelb.ttf "Corbel Bold"
w_register_font corbeli.ttf "Corbel Italic"
w_register_font corbelz.ttf "Corbel Bold Italic"
}

#----------------------------------------------------------------

w_metadata meiryo fonts \
title="MS Meiryo font" \
publisher="Microsoft" \
year="2009" \
media="download" \
conflicts="fakejapanese_vlgothic" \
file1="PowerPointViewer.exe" \
installed_file1="${W_FONTSDIR_WIN}/meiryo.ttc"

load_meiryo()
{
helper_pptfonts "MEIRYO*.TTC"
w_register_font meiryo.ttc "Meiryo & Meiryo Italic & Meiryo UI & Meiryo UI Italic"
w_register_font meiryob.ttc "Meiryo Bold & Meiryo Bold Italic & Meiryo UI Bold & Meiryo UI Bold Italic"
}

#----------------------------------------------------------------

w_metadata pptfonts fonts \
title="All MS PowerPoint Viewer fonts" \
publisher="various" \
date="2007-2009" \
media="download"

load_pptfonts()
{
w_call calibri
w_call cambria
w_call candara
w_call consolas
w_call constantia
w_call corbel
w_call meiryo
}

helper_pptfonts()
{
# download PowerPointViewer, extract the given files, and copy them to $W_FONTSDIR_UNIX
# Font registration should still be done by the respective verbs
# $1 - font pattern to extract

    pptfont="$1"
    w_download_to PowerPointViewer "https://web.archive.org/web/20171225132744if_/https://download.microsoft.com/download/E/6/7/E675FFFC-2A6D-4AB0-B3EB-27C9F8C8F696/PowerPointViewer.exe" 249473568eba7a1e4f95498acba594e0f42e6581add4dead70c1dfb908a09423
    w_try_cabextract -d "${W_TMP}" -F "ppviewer.cab" "${W_CACHE}/PowerPointViewer/PowerPointViewer.exe"
    w_try_cabextract -d "${W_TMP}" -F "${pptfont}" "${W_TMP}/ppviewer.cab"
    w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "${pptfont}"
}

#----------------------------------------------------------------

w_metadata andale fonts \
title="MS Andale Mono font" \
publisher="Microsoft" \
year="2008" \
media="download" \
file1="andale32.exe" \
installed_file1="${W_FONTSDIR_WIN}/andalemo.ttf"

load_andale()
{
w_download_to corefonts "https://github.com/pushcx/corefonts/raw/master/andale32.exe" 0524fe42951adc3a7eb870e32f0920313c71f170c859b5f770d82b4ee111e970
w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/corefonts/andale32.exe
w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "AndaleMo.TTF"
w_register_font andalemo.ttf "Andale Mono"
}

#----------------------------------------------------------------

w_metadata arial fonts \
title="MS Arial / Arial Black fonts" \
publisher="Microsoft" \
year="2008" \
media="download" \
file1="arial32.exe" \
installed_file1="${W_FONTSDIR_WIN}/arial.ttf"

load_arial()
{
w_download_to corefonts "https://github.com/pushcx/corefonts/raw/master/arial32.exe" 85297a4d146e9c87ac6f74822734bdee5f4b2a722d7eaa584b7f2cbf76f478f6
w_download_to corefonts "https://github.com/pushcx/corefonts/raw/master/arialb32.exe" a425f0ffb6a1a5ede5b979ed6177f4f4f4fdef6ae7c302a7b7720ef332fec0a8

    w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/corefonts/arial32.exe
    w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "Arial*.TTF"
    w_register_font arialbd.ttf "Arial Bold"
    w_register_font arialbi.ttf "Arial Bold Italic"
    w_register_font ariali.ttf "Arial Italic"
    w_register_font arial.ttf "Arial"

    w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/corefonts/arialb32.exe
    w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "AriBlk.TTF"
    w_register_font ariblk.ttf "Arial Black"
}

#----------------------------------------------------------------

w_metadata comicsans fonts \
title="MS Comic Sans fonts" \
publisher="Microsoft" \
year="2008" \
media="download" \
file1="comic32.exe" \
installed_file1="${W_FONTSDIR_WIN}/comic.ttf"

load_comicsans()
{
w_download_to corefonts "https://github.com/pushcx/corefonts/raw/master/comic32.exe" 9c6df3feefde26d4e41d4a4fe5db2a89f9123a772594d7f59afd062625cd204e
w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/corefonts/comic32.exe
w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "Comic*.TTF"
w_register_font comicbd.ttf "Comic Sans MS Bold"
w_register_font comic.ttf "Comic Sans MS"
}

#----------------------------------------------------------------

w_metadata courier fonts \
title="MS Courier fonts" \
publisher="Microsoft" \
year="2008" \
media="download" \
file1="courie32.exe" \
installed_file1="${W_FONTSDIR_WIN}/cour.ttf"
load_courier()
{
w_download_to corefonts "https://github.com/pushcx/corefonts/raw/master/courie32.exe" bb511d861655dde879ae552eb86b134d6fae67cb58502e6ff73ec5d9151f3384
w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/corefonts/courie32.exe
w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "cour*.ttf"
w_register_font courbd.ttf "Courier New Bold"
w_register_font courbi.ttf "Courier New Bold Italic"
w_register_font couri.ttf "Courier New Italic"
w_register_font cour.ttf "Courier New"
}

#----------------------------------------------------------------

w_metadata georgia fonts \
title="MS Georgia fonts" \
publisher="Microsoft" \
year="2008" \
media="download" \
file1="georgi32.exe" \
installed_file1="${W_FONTSDIR_WIN}/georgia.ttf"
load_georgia()
{
w_download_to corefonts "https://github.com/pushcx/corefonts/raw/master/georgi32.exe" 2c2c7dcda6606ea5cf08918fb7cd3f3359e9e84338dc690013f20cd42e930301
w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/corefonts/georgi32.exe
w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "Georgia*.TTF"
w_register_font georgiab.ttf "Georgia Bold"
w_register_font georgiai.ttf "Georgia Italic"
w_register_font georgia.ttf "Georgia"
w_register_font georgiaz.ttf "Georgia Bold Italic"
}

#----------------------------------------------------------------

w_metadata impact fonts \
title="MS Impact fonts" \
publisher="Microsoft" \
year="2008" \
media="download" \
file1="impact32.exe" \
installed_file1="${W_FONTSDIR_WIN}/impact.ttf"

load_impact()
{
w_download_to corefonts "https://github.com/pushcx/corefonts/raw/master/impact32.exe" 6061ef3b7401d9642f5dfdb5f2b376aa14663f6275e60a51207ad4facf2fccfb
w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/corefonts/impact32.exe
w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "Impact.TTF"
w_register_font impact.ttf "Impact"
}

#----------------------------------------------------------------

w_metadata times fonts \
title="MS Times fonts" \
publisher="Microsoft" \
year="2008" \
media="download" \
file1="times32.exe" \
installed_file1="${W_FONTSDIR_WIN}/times.ttf"

load_times()
{
w_download_to corefonts "https://github.com/pushcx/corefonts/raw/master/times32.exe" db56595ec6ef5d3de5c24994f001f03b2a13e37cee27bc25c58f6f43e8f807ab
w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/corefonts/times32.exe
w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "Times*.TTF"
w_register_font timesbd.ttf "Times New Roman Bold"
w_register_font timesbi.ttf "Times New Roman Bold Italic"
w_register_font timesi.ttf "Times New Roman Italic"
w_register_font times.ttf "Times New Roman"
}

#----------------------------------------------------------------

w_metadata trebuchet fonts \
title="MS Trebuchet fonts" \
publisher="Microsoft" \
year="2008" \
media="download" \
file1="trebuchet32.exe" \
installed_file1="${W_FONTSDIR_WIN}/trebuc.ttf"

load_trebuchet()
{
w_download_to corefonts "https://github.com/pushcx/corefonts/raw/master/trebuc32.exe" 5a690d9bb8510be1b8b4fe49f1f2319651fe51bbe54775ddddd8ef0bd07fdac9
w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/corefonts/trebuc32.exe
w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "[tT]rebuc*.ttf"
w_register_font trebucbd.ttf "Trebuchet MS Bold"
w_register_font trebucbi.ttf "Trebuchet MS Bold Italic"
w_register_font trebucit.ttf "Trebuchet MS Italic"
w_register_font trebuc.ttf "Trebuchet MS"
}

#----------------------------------------------------------------

w_metadata verdana fonts \
title="MS Verdana fonts" \
publisher="Microsoft" \
year="2008" \
media="download" \
file1="verdan32.exe" \
installed_file1="${W_FONTSDIR_WIN}/verdana.ttf"

load_verdana()
{
w_download_to corefonts "https://github.com/pushcx/corefonts/raw/master//verdan32.exe" c1cb61255e363166794e47664e2f21af8e3a26cb6346eb8d2ae2fa85dd5aad96
w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/corefonts/verdan32.exe
w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "Verdana*.TTF"
w_register_font verdanab.ttf "Verdana Bold"
w_register_font verdanai.ttf "Verdana Italic"
w_register_font verdana.ttf "Verdana"
w_register_font verdanaz.ttf "Verdana Bold Italic"
}

#----------------------------------------------------------------

w_metadata webdings fonts \
title="MS Webdings fonts" \
publisher="Microsoft" \
year="2008" \
media="download" \
file1="webdin32.exe" \
installed_file1="${W_FONTSDIR_WIN}/webdings.ttf"

load_webdings()
{
w_download_to corefonts "https://github.com/pushcx/corefonts/raw/master/webdin32.exe" 64595b5abc1080fba8610c5c34fab5863408e806aafe84653ca8575bed17d75a
w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/corefonts/webdin32.exe
w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "Webdings.TTF"
w_register_font webdings.ttf "Webdings"
}

#----------------------------------------------------------------

w_metadata eufonts fonts \
title="Updated fonts for Romanian and Bulgarian" \
publisher="Microsoft" \
year="2008" \
media="download" \
file1="EUupdate.EXE" \
installed_file1="${W_FONTSDIR_WIN}/trebucbd.ttf"

load_eufonts()
{
# https://www.microsoft.com/en-us/download/details.aspx?id=16083
# Previously at https://download.microsoft.com/download/a/1/8/a180e21e-9c2b-4b54-9c32-bf7fd7429970/EUupdate.EXE
# 2020/09/11: https://sourceforge.net/projects/mscorefonts2/files/cabs/EUupdate.EXE
w_download "https://sourceforge.net/projects/mscorefonts2/files/cabs/EUupdate.EXE" 464dd2cd5f09f489f9ac86ea7790b7b8548fc4e46d9f889b68d2cdce47e09ea8
w_try_cabextract -d "${W_TMP}" "${W_CACHE}"/eufonts/EUupdate.EXE
w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}"

    w_register_font arialbd.ttf "Arial Bold"
    w_register_font arialbi.ttf "Arial Bold Italic"
    w_register_font ariali.ttf "Arial Italic"
    w_register_font arial.ttf "Arial"
    w_register_font timesbd.ttf "Times New Roman Bold"
    w_register_font timesbi.ttf "Times New Roman Bold Italic"
    w_register_font timesi.ttf "Times New Roman Italic"
    w_register_font times.ttf "Times New Roman"
    w_register_font trebucbd.ttf "Trebuchet MS Bold"
    w_register_font trebucbi.ttf "Trebuchet MS Bold Italic"
    w_register_font trebucit.ttf "Trebuchet MS Italic"
    w_register_font trebuc.ttf "Trebuchet MS"
    w_register_font verdanab.ttf "Verdana Bold"
    w_register_font verdanai.ttf "Verdana Italian"
    w_register_font verdana.ttf "Verdana"
    w_register_font verdanaz.ttf "Verdana Bold Italic"
}

#----------------------------------------------------------------

w_metadata lucida fonts \
title="MS Lucida Console font" \
publisher="Microsoft" \
year="1998" \
media="download" \
file1="eurofixi.exe" \
installed_file1="${W_FONTSDIR_WIN}/lucon.ttf"

load_lucida()
{
# The site supports https with Let's Encrypt, but that cert fails with curl (which breaks src/linkcheck.sh)
w_download "http://ftpmirror.your.org/pub/misc/ftp.microsoft.com/bussys/winnt/winnt-public/fixes/usa/NT40TSE/hotfixes-postSP3/Euro-fix/eurofixi.exe" 41f272a33521f6e15f2cce9ff1e049f2badd5ff0dc327fc81b60825766d5b6c7
w_try_cabextract -d "${W_TMP}" -F "lucon.ttf" "${W_CACHE}"/lucida/eurofixi.exe
w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}"
w_register_font lucon.ttf "Lucida Console"
}


#----------------------------------------------------------------

w_metadata tahoma fonts \
title="MS Tahoma font (not part of corefonts)" \
publisher="Microsoft" \
year="1999" \
media="download" \
file1="IELPKTH.CAB" \
installed_file1="${W_FONTSDIR_WIN}/tahoma.ttf"

load_tahoma()
{
# Formerly at https://download.microsoft.com/download/ie55sp2/Install/5.5_SP2/WIN98Me/EN-US/IELPKTH.CAB
w_download https://downloads.sourceforge.net/corefonts/OldFiles/IELPKTH.CAB c1be3fb8f0042570be76ec6daa03a99142c88367c1bc810240b85827c715961a

    w_try_cabextract -d "${W_TMP}" "${W_CACHE}/${W_PACKAGE}/${file1}"
    w_try_cp_font_files "${W_TMP}" "${W_FONTSDIR_UNIX}" "*.TTF"

    w_register_font tahoma.ttf "Tahoma"
    w_register_font tahomabd.ttf "Tahoma Bold"
}


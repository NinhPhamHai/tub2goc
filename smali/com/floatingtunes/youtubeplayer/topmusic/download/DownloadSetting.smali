.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DownloadSetting.java"


# instance fields
.field private DOWNLOAD_PATH_AUDIO_PREFERENCE:Ljava/lang/String;

.field private DOWNLOAD_PATH_VIDEO_PREFERENCE:Ljava/lang/String;

.field context:Landroid/content/Context;

.field protected defaultPreferences:Landroid/content/SharedPreferences;

.field rlAudioPath:Landroid/widget/RelativeLayout;

.field rlVideoPath:Landroid/widget/RelativeLayout;

.field toolBar:Landroidx/appcompat/widget/Toolbar;

.field tvAudioPath:Landroid/widget/TextView;

.field tvVideoPath:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private forgetSAFTree(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private getSimplePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 225
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    sget-char v0, Ljava/io/File;->separatorChar:C

    if-ne p2, v0, :cond_1

    return-object p1

    :cond_1
    const-string p2, "file"

    .line 228
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 229
    new-instance p2, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 233
    :cond_2
    :try_start_0
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1

    .line 222
    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private openFileSelector(I)V
    .locals 4

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.content.extra.SHOW_ADVANCED"

    .line 108
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x43

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    .line 112
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "nononsense.intent.ALLOW_CREATE_DIR"

    .line 113
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "nononsense.intent.MODE"

    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 117
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showMessageDialog(II)V
    .locals 2

    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    const/4 p2, 0x0

    .line 184
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateNewPath()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->tvAudioPath:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;->getAudioDownloadFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100f4

    invoke-direct {p0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->getSimplePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->tvVideoPath:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;->getVideoDownloadFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100f7

    invoke-direct {p0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->getSimplePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "DownloadSetting"

    .line 123
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x1235

    if-ne p1, p2, :cond_1

    .line 129
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->DOWNLOAD_PATH_VIDEO_PREFERENCE:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 p2, 0x1236

    if-ne p1, p2, :cond_7

    .line 131
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->DOWNLOAD_PATH_AUDIO_PREFERENCE:Ljava/lang/String;

    .line 135
    :goto_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const v1, 0x7f11016b

    if-nez p2, :cond_2

    const p1, 0x7f110189

    .line 137
    invoke-direct {p0, v1, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->showMessageDialog(II)V

    return-void

    .line 141
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_5

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 149
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->defaultPreferences:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->forgetSAFTree(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p3, v2, p2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 154
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p3, p2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 155
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquiring tree success from "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->canWrite()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 158
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No write permissions on "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 160
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error acquiring tree from "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const p1, 0x7f110218

    .line 161
    invoke-direct {p0, v1, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->showMessageDialog(II)V

    return-void

    .line 147
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "getContext()"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/nononsenseapps/filepicker/Utils;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p2

    .line 166
    invoke-virtual {p2}, Ljava/io/File;->canWrite()Z

    move-result p3

    if-nez p3, :cond_6

    const p1, 0x7f1100fd

    const p2, 0x7f1100fc

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->showMessageDialog(II)V

    return-void

    .line 170
    :cond_6
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 173
    :goto_1
    iget-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->updateNewPath()V

    .line 176
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitialNow()Z

    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001f

    .line 64
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 66
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->toolBar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0801f1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 67
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->toolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 68
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->defaultPreferences:Landroid/content/SharedPreferences;

    const p1, 0x7f1100f9

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->DOWNLOAD_PATH_VIDEO_PREFERENCE:Ljava/lang/String;

    const p1, 0x7f1100f3

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->DOWNLOAD_PATH_AUDIO_PREFERENCE:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->updateNewPath()V

    .line 77
    iput-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->context:Landroid/content/Context;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 89
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRlAudioPathClicked()V
    .locals 1

    const/16 v0, 0x1236

    .line 99
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->openFileSelector(I)V

    return-void
.end method

.method public onRlVideoPathClicked()V
    .locals 1

    const/16 v0, 0x1235

    .line 94
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->openFileSelector(I)V

    return-void
.end method

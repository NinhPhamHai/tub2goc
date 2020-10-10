.class Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;
.super Landroid/os/AsyncTask;
.source "AudioPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/AudioPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioPickerWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lch/blinkenlights/android/vanilla/Song;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/AudioPickerActivity;


# direct methods
.method private constructor <init>(Lch/blinkenlights/android/vanilla/AudioPickerActivity;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;->this$0:Lch/blinkenlights/android/vanilla/AudioPickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lch/blinkenlights/android/vanilla/AudioPickerActivity;Lch/blinkenlights/android/vanilla/AudioPickerActivity$1;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;-><init>(Lch/blinkenlights/android/vanilla/AudioPickerActivity;)V

    return-void
.end method

.method private getCursorForAnyContent(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    const/16 v0, 0x2000

    const/4 v1, 0x0

    .line 271
    :try_start_0
    new-array v0, v0, [B

    .line 272
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;->this$0:Lch/blinkenlights/android/vanilla/AudioPickerActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "cached-download-"

    const-string v3, ".bin"

    .line 273
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;->this$0:Lch/blinkenlights/android/vanilla/AudioPickerActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :goto_0
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    .line 278
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 279
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_2

    .line 290
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 291
    :catch_0
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_5

    :catch_1
    nop

    goto :goto_2

    :catch_2
    move-object v3, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_3
    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v1

    goto :goto_3

    :catch_4
    move-object p1, v1

    move-object v2, p1

    :goto_1
    move-object v3, v2

    :goto_2
    if-eqz v2, :cond_5

    .line 286
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v3

    :goto_3
    if-eqz p1, :cond_3

    .line 290
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_3
    if-eqz v1, :cond_4

    .line 291
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 292
    :catch_6
    :cond_4
    throw v0

    :cond_5
    :goto_4
    if-eqz p1, :cond_6

    .line 290
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_6
    if-eqz v3, :cond_7

    .line 291
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    :cond_7
    move-object v2, v1

    :catch_9
    :goto_5
    if-eqz v2, :cond_8

    .line 295
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/MediaUtils;->getCursorForFileQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_8
    return-object v1
.end method

.method private getCursorForMediaContent(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7

    .line 241
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;->this$0:Lch/blinkenlights/android/vanilla/AudioPickerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 243
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 244
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
    sget-object v0, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildFileQuery(Ljava/lang/String;[Ljava/lang/String;Z)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;->this$0:Lch/blinkenlights/android/vanilla/AudioPickerActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/QueryTask;->runQuery(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 250
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method private getSongForUri(Landroid/net/Uri;)Lch/blinkenlights/android/vanilla/Song;
    .locals 5

    .line 209
    new-instance v0, Lch/blinkenlights/android/vanilla/Song;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lch/blinkenlights/android/vanilla/Song;-><init>(J)V

    .line 212
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "media"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;->getCursorForMediaContent(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;->getCursorForAnyContent(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 220
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/MediaUtils;->getCursorForFileQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 226
    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/Song;->populate(Landroid/database/Cursor;)V

    .line 228
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_4
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/Song;->isFilled()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Lch/blinkenlights/android/vanilla/Song;
    .locals 1

    const/4 v0, 0x0

    .line 195
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;->getSongForUri(Landroid/net/Uri;)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 192
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;->doInBackground([Landroid/net/Uri;)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lch/blinkenlights/android/vanilla/Song;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;->this$0:Lch/blinkenlights/android/vanilla/AudioPickerActivity;

    invoke-static {v0, p1}, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->access$100(Lch/blinkenlights/android/vanilla/AudioPickerActivity;Lch/blinkenlights/android/vanilla/Song;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 192
    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;->onPostExecute(Lch/blinkenlights/android/vanilla/Song;)V

    return-void
.end method

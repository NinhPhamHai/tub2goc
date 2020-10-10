.class Lch/blinkenlights/android/vanilla/PlaybackActivity$4;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/PlaybackActivity;->showPluginMenu(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$pNamesArr:[Ljava/lang/String;

.field final synthetic val$plugins:Ljava/util/Map;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PlaybackActivity;Landroid/content/Intent;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;->this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;->val$plugins:Ljava/util/Map;

    iput-object p4, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;->val$pNamesArr:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 711
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;->val$intent:Landroid/content/Intent;

    const-string v0, "id"

    const-wide/16 v1, -0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 712
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;->this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lch/blinkenlights/android/vanilla/MediaUtils;->getSongByTypeId(Landroid/content/Context;IJ)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 714
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;->val$plugins:Ljava/util/Map;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;->val$pNamesArr:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 715
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ch.blinkenlights.android.vanilla.action.LAUNCH_PLUGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    new-instance p2, Ljava/io/File;

    iget-object v1, p1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "ch.blinkenlights.android.vanilla.extra.URI"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 718
    iget-object p2, p1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    const-string v1, "ch.blinkenlights.android.vanilla.extra.SONG_TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iget-object p2, p1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    const-string v1, "ch.blinkenlights.android.vanilla.extra.SONG_ARTIST"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    iget-object p1, p1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    const-string p2, "ch.blinkenlights.android.vanilla.extra.SONG_ALBUM"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;->this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 722
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;->this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 724
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t start plugin activity for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PluginSystem"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

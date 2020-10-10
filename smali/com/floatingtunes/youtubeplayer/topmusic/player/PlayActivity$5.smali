.class Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$5;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->onMBtnOptionsClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 481
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0902e0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 484
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.youtube.com/watch?v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    iget-object v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 485
    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 484
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 487
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

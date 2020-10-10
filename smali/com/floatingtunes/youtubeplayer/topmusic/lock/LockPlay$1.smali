.class Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$1;
.super Ljava/lang/Object;
.source "LockPlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->isFavoriteVideo(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->deleteFromFavorite(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 154
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnFavourite:Landroid/widget/ImageView;

    const v0, 0x7f08021e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->saveToFavorite(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 157
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnFavourite:Landroid/widget/ImageView;

    const v0, 0x7f08021a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

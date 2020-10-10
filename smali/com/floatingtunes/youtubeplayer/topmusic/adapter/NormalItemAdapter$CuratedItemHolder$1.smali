.class Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder$1;
.super Ljava/lang/Object;
.source "NormalItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;Landroid/view/View;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder;

.field final synthetic val$listener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

.field final synthetic val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder$1;->val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;

    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder$1;->val$listener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder$1;->val$listener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder;->mHomePlaylist:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;->onPlaylistItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    return-void
.end method

.class Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder$1;
.super Ljava/lang/Object;
.source "FeaturedItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;Landroid/view/View;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;

.field final synthetic val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder$1;->val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mHomePlaylist:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-interface {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;->onPlaylistItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    return-void
.end method

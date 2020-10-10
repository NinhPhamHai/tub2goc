.class Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder$1;
.super Ljava/lang/Object;
.source "ArtistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;

.field final synthetic val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder$1;->val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->t:Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    instance-of v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    if-eqz v1, :cond_0

    .line 124
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;->onClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;)V

    :cond_0
    return-void
.end method

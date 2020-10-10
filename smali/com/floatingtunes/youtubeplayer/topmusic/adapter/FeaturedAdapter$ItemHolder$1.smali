.class Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder$1;
.super Ljava/lang/Object;
.source "FeaturedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;Landroid/view/View;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;

.field final synthetic val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder$1;->val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 304
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->type_name:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;->onViewAllClick(Ljava/lang/String;)V

    return-void
.end method

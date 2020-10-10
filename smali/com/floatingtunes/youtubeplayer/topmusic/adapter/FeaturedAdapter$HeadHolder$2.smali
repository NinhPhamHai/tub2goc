.class Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder$2;
.super Ljava/lang/Object;
.source "FeaturedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;

.field final synthetic val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder$2;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder$2;->val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder$2;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;->getHome_banner()Lcom/floatingtunes/youtubeplayer/topmusic/module/HomeBanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/HomeBanner;->getHot_charts()Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    return-void
.end method

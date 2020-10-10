.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder$1;
.super Ljava/lang/Object;
.source "NewTopFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;

.field final synthetic val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder$1;->val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 631
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->itemName:Ljava/lang/String;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->actionStart(Ljava/lang/String;Landroid/content/Context;)V

    const/16 p1, 0x3c

    .line 633
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 634
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitialNow()Z

    :cond_0
    return-void
.end method

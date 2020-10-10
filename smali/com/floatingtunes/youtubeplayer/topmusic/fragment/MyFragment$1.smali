.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment$1;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->loadAdS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 0

    return-void
.end method

.method public success()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mAdContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

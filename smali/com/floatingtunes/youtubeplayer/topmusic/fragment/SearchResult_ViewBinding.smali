.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult_ViewBinding;
.super Ljava/lang/Object;
.source "SearchResult_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

    .line 23
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0902de

    const-string v2, "field \'mVpChart\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mVpChart:Landroidx/viewpager/widget/ViewPager;

    .line 24
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f090153

    const-string v2, "field \'mMainTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 25
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09001e

    const-string v2, "field \'adContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->adContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

    .line 35
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mVpChart:Landroidx/viewpager/widget/ViewPager;

    .line 36
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 37
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->adContainer:Landroid/widget/LinearLayout;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

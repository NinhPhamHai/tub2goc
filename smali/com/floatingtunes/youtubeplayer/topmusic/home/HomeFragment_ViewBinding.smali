.class public Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment_ViewBinding;
.super Ljava/lang/Object;
.source "HomeFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment;

    .line 22
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0902de

    const-string v2, "field \'mVpChart\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment;->mVpChart:Landroidx/viewpager/widget/ViewPager;

    .line 23
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f090153

    const-string v2, "field \'mMainTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment;

    .line 33
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment;->mVpChart:Landroidx/viewpager/widget/ViewPager;

    .line 34
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeFragment;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

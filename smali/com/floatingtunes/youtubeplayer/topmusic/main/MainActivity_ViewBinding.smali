.class public Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;

    .line 29
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090298

    const-string v2, "field \'mToolBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 30
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f09002c

    const-string v2, "field \'mAppBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 31
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0902df

    const-string v2, "field \'mVpMain\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mVpMain:Landroidx/viewpager/widget/ViewPager;

    .line 32
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f090153

    const-string v2, "field \'mMainTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;

    .line 42
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 43
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 44
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mVpMain:Landroidx/viewpager/widget/ViewPager;

    .line 45
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

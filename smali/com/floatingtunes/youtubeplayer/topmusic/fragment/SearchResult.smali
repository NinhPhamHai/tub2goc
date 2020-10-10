.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;
.super Landroidx/fragment/app/Fragment;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult$MainPager;
    }
.end annotation


# instance fields
.field adContainer:Landroid/widget/LinearLayout;

.field mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field mNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryKey:Ljava/lang/String;

.field mSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTabTop:Lcom/google/android/material/tabs/TabLayout$Tab;

.field mVpChart:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private loadAd()V
    .locals 5

    .line 114
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;-><init>()V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;->AD_NATIVE_SPLASH:Ljava/lang/String;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->adContainer:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult$1;

    invoke-direct {v4, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;->load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;
    .locals 3

    .line 61
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_QUERY_KEY"

    .line 63
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_QUERY_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mQueryKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0c0081

    .line 80
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 82
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->setFragments()V

    .line 83
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 84
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mVpChart:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 85
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mVpChart:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult$MainPager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult$MainPager;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 87
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mNameList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mTabTop:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 88
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mNameList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mTabTop:Lcom/google/android/material/tabs/TabLayout$Tab;

    return-object p1
.end method

.method setFragments()V
    .locals 2

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mSearchResults:Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mSearchResults:Ljava/util/List;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mQueryKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->newInstance(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mSearchResults:Ljava/util/List;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mQueryKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->newInstance(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mNameList:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mNameList:Ljava/util/List;

    const-string v1, "Music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mNameList:Ljava/util/List;

    const-string v1, "Playlist"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->loadAd()V

    :cond_0
    return-void
.end method

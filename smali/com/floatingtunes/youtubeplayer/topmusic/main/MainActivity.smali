.class public Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/dialog/PermissionDialog$Listener;


# instance fields
.field mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field mFeaturedFragment:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

.field mFragments:[Landroidx/fragment/app/Fragment;

.field mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field mMainText:[Ljava/lang/String;

.field mMyFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

.field mNewTopFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

.field mTabDiscover:Lcom/google/android/material/tabs/TabLayout$Tab;

.field mTabMy:Lcom/google/android/material/tabs/TabLayout$Tab;

.field mTabRadio:Lcom/google/android/material/tabs/TabLayout$Tab;

.field mTabTop:Lcom/google/android/material/tabs/TabLayout$Tab;

.field mToolBar:Landroidx/appcompat/widget/Toolbar;

.field mVpMain:Landroidx/viewpager/widget/ViewPager;

.field radioFragment:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private deeplink()V
    .locals 1

    .line 143
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;)V

    invoke-static {p0, v0}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method private initFragment()V
    .locals 7

    .line 75
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 77
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mNewTopFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    .line 78
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->newInstance()Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMyFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    .line 79
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;->newInstance()Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mFeaturedFragment:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    .line 80
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->radioFragment:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;

    const/4 v0, 0x4

    .line 82
    new-array v1, v0, [Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mNewTopFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mFeaturedFragment:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->radioFragment:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMyFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    .line 83
    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f1102de

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f1102dc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f1102e5

    .line 84
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f1102e4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainText:[Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mVpMain:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 88
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mVpMain:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$1;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mVpMain:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 118
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mVpMain:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 119
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainText:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mTabTop:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 120
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainText:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mTabDiscover:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 121
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainText:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mTabRadio:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 122
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v6}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mMainText:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mTabMy:Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 198
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x1bc

    if-ne p1, p2, :cond_1

    .line 200
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/Permission;->checkPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mVpMain:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mVpMain:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

    .line 129
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 130
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 131
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/cloudstore/firebase/FirestoreUtil;->checkFireStoreConfig()V

    .line 132
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager;->createScheduleNotification(Landroid/content/Context;)V

    .line 133
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->deeplink()V

    .line 134
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->initFragment()V

    .line 135
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 242
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0004

    .line 243
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 250
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090232

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090247

    if-eq v0, v1, :cond_0

    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 253
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 258
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SearchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2
.end method

.method protected onResume()V
    .locals 5

    .line 219
    invoke-super {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onResume()V

    .line 222
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isUserRatting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->getAppFirstInstallTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/16 v0, 0x1e

    .line 226
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdUtil;->randomBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->newInstance()Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x14

    .line 233
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdUtil;->randomBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    :cond_1
    return-void
.end method

.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "TopListActivity.java"


# static fields
.field private static ARG_FOLDER:Ljava/lang/String; = "ARG_FOLDER"

.field private static ARG_HOME_PLAYLIST:Ljava/lang/String; = "ARG_HOME_PLAYLIST"


# instance fields
.field mAdContainer:Landroid/widget/LinearLayout;

.field private mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

.field private mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

.field mGenresToolbar:Landroidx/appcompat/widget/Toolbar;

.field mTopListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->ARG_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->ARG_HOME_PLAYLIST:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private loadAd()V
    .locals 4

    .line 137
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;-><init>()V

    .line 138
    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;->AD_NATIVE_SPLASH:Ljava/lang/String;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mAdContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity$1;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;->load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V

    return-void
.end method


# virtual methods
.method public loadInfo()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getDb_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "country_topvideo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/CountryUtil;->getCountryNameByCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mGenresToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900dd

    .line 172
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 175
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-direct {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;-><init>()V

    .line 176
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getCreate_time()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setCreate_date(Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getUpdate_time()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setUpdate_date(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getUnique_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setId(Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setThumbnail(Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setTitle(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getDb_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setType(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getMusicBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getMusicBeanList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setMusicBeanList(Ljava/util/List;)V

    .line 187
    :cond_1
    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->newInstance(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mTopListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    .line 188
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mTopListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    .line 189
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 190
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002a

    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 70
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mGenresToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 72
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->ARG_HOME_PLAYLIST:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->ARG_FOLDER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    .line 82
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    .line 85
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-direct {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    .line 86
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    const-string v0, "FOLDER_TYPE_DATABASE"

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setFolder_type(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setFolder_name(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getUpdate_date()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setUpdate_time(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getCreate_date()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setCreate_time(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setThumbnail(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setUnique_id(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setDb_type(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "artist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setDb_type(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "genres"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setDb_type(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "home_banner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setDb_type(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "spotlight_square"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 101
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    const-string v0, "spotlighton"

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setDb_type(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "top_country"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 103
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    const-string v0, "country_topvideo"

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setDb_type(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_5
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mood"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 105
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setDb_type(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_6
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "topcharts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 107
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setDb_type(Ljava/lang/String;)V

    .line 110
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 111
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    const-string v1, "FOLDER_TYPE_YOUTUBE"

    invoke-virtual {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setFolder_type(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setDb_type(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    .line 116
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mArgPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    if-nez v0, :cond_9

    .line 118
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    goto :goto_1

    :cond_9
    const-string p1, "Application Error"

    .line 122
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 127
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->loadInfo()V

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 130
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->loadAd()V

    :cond_b
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 229
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    .line 230
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090188

    .line 232
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 204
    :sswitch_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mTopListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->playAllMusicShuffle()V

    goto :goto_0

    .line 216
    :sswitch_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mTopListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->createUserFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    .line 218
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mTopListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->saveToMyMusic()V

    goto :goto_0

    .line 210
    :sswitch_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->mTopListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->playAllMusicOrder()V

    goto :goto_0

    .line 200
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 223
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f090187 -> :sswitch_2
        0x7f090188 -> :sswitch_1
        0x7f09018a -> :sswitch_0
    .end sparse-switch
.end method

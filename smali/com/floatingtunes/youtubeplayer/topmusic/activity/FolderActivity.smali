.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "FolderActivity.java"


# instance fields
.field mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

.field mFolderListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

.field mGenresToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "FOLDER_NAME"

    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002a

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 49
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "FOLDER_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    .line 54
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->getVideoByFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mDataList:Ljava/util/List;

    .line 55
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mGenresToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 56
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 59
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "History"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mGenresToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f110279

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mGenresToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0900dd

    .line 65
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mDataList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;->newInstance(Ljava/util/ArrayList;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mFolderListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    .line 68
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mFolderListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    .line 69
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 70
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 85
    :sswitch_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mFolderListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;->playAllMusicShuffle()V

    goto :goto_0

    .line 91
    :sswitch_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mFolderListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;->playAllMusicOrder()V

    goto :goto_0

    .line 96
    :sswitch_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/FolderActivity;->mFolderListFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;->cleanAllItem()V

    goto :goto_0

    .line 81
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 101
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f090183 -> :sswitch_2
        0x7f090187 -> :sswitch_1
        0x7f09018a -> :sswitch_0
    .end sparse-switch
.end method

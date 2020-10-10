.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "ChannelActivity.java"


# static fields
.field private static PARAM:Ljava/lang/String; = "HomeChannel"


# instance fields
.field mFragmentContainer:Landroid/widget/FrameLayout;

.field mHomeChannel:Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;

.field mSettingToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0030

    .line 46
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 47
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->PARAM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->mHomeChannel:Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->mHomeChannel:Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->mSettingToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0801f1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 53
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->mSettingToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->mHomeChannel:Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->getChannelTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->mSettingToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0900dd

    .line 56
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->mHomeChannel:Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->newInstance(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 60
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 61
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

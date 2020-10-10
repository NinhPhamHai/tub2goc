.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/PrivacyActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PrivacyActivity.java"


# instance fields
.field mToolBar:Landroidx/appcompat/widget/Toolbar;

.field mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method loadUrl()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/PrivacyActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/info.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002b

    .line 24
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 25
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 26
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/PrivacyActivity;->loadUrl()V

    .line 27
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/PrivacyActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0801f1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 29
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/PrivacyActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 45
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

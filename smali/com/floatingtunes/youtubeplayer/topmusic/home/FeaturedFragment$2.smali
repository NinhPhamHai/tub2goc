.class Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;
.super Ljava/lang/Object;
.source "FeaturedFragment.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaylistItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    const/16 p1, 0x3c

    .line 204
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    :cond_0
    return-void
.end method

.method public onViewAllClick(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Top World"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "type_name"

    const/16 v3, 0x3c

    if-eqz v1, :cond_0

    .line 163
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    invoke-direct {p1, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 168
    invoke-static {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 169
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    goto :goto_0

    :cond_0
    const-string v0, "Mood"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 178
    invoke-static {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 179
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    goto :goto_0

    :cond_1
    const-string v0, "Top Charts"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "Genres"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 187
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    invoke-direct {p1, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 193
    :cond_3
    :goto_0
    invoke-static {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 194
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    :cond_4
    return-void
.end method

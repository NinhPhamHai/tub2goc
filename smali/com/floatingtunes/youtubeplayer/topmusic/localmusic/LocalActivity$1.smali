.class Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity$1;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "LocalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/localmusic/LocalActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1
.end method

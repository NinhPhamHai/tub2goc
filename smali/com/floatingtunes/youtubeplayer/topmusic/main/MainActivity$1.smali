.class Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$1;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->initFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1
.end method

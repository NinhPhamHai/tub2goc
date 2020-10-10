.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult$MainPager;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainPager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult$MainPager;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

    .line 143
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult$MainPager;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mSearchResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult$MainPager;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mSearchResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult$MainPager;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResult;->mNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

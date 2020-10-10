.class public Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "LibraryPagerAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;
    }
.end annotation


# static fields
.field public static final DEFAULT_TAB_ORDER:[I

.field public static final DEFAULT_TAB_VISIBILITY:[Z

.field public static final TITLES:[I

.field private static sLruAdapterPos:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;


# instance fields
.field private final mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

.field public mAdapters:[Lch/blinkenlights/android/vanilla/LibraryAdapter;

.field private mAlbArtAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private mArtistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private mComposerAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

.field private mCurrentPage:I

.field private mFilesAdapter:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

.field private mFilter:Ljava/lang/String;

.field private mGenreAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private mHeaderText:Ljava/lang/String;

.field private mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/android/vanilla/DraggableRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mLists:[Landroid/widget/ListView;

.field private mPendingAlbArtLimiter:Lch/blinkenlights/android/vanilla/Limiter;

.field private mPendingAlbumLimiter:Lch/blinkenlights/android/vanilla/Limiter;

.field private mPendingArtistLimiter:Lch/blinkenlights/android/vanilla/Limiter;

.field private mPendingComposerLimiter:Lch/blinkenlights/android/vanilla/Limiter;

.field private mPendingFileLimiter:Lch/blinkenlights/android/vanilla/Limiter;

.field private mPendingSongLimiter:Lch/blinkenlights/android/vanilla/Limiter;

.field mPlaylistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private final mRequeryNeeded:[Z

.field private mSongAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private mTabCount:I

.field mTabOrder:[I

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    .line 67
    new-array v1, v0, [I

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->artists:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->albums:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->songs:I

    const/4 v3, 0x2

    aput v2, v1, v3

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->playlists:I

    const/4 v3, 0x3

    aput v2, v1, v3

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->genres:I

    const/4 v3, 0x4

    aput v2, v1, v3

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->albumartists:I

    const/4 v3, 0x5

    aput v2, v1, v3

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->composers:I

    const/4 v3, 0x6

    aput v2, v1, v3

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->files:I

    const/4 v3, 0x7

    aput v2, v1, v3

    sput-object v1, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->TITLES:[I

    .line 72
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->DEFAULT_TAB_ORDER:[I

    .line 78
    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->DEFAULT_TAB_VISIBILITY:[Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5
        0x6
        0x1
        0x2
        0x3
        0x4
        0x7
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/os/Looper;)V
    .locals 2

    .line 204
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/16 v0, 0x8

    .line 92
    new-array v1, v0, [Landroid/widget/ListView;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mLists:[Landroid/widget/ListView;

    .line 96
    new-array v1, v0, [Lch/blinkenlights/android/vanilla/LibraryAdapter;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAdapters:[Lch/blinkenlights/android/vanilla/LibraryAdapter;

    .line 100
    new-array v0, v0, [Z

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mRequeryNeeded:[Z

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mHeaderViews:Ljava/util/ArrayList;

    .line 205
    sget-object v0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->sLruAdapterPos:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;-><init>(Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->sLruAdapterPos:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;

    .line 207
    :cond_0
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    .line 208
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mUiHandler:Landroid/os/Handler;

    .line 209
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mWorkerHandler:Landroid/os/Handler;

    const/4 p1, -0x1

    .line 210
    iput p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentPage:I

    return-void
.end method

.method private static createHeaderIntent(Landroid/view/View;)Landroid/content/Intent;
    .locals 4

    .line 854
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 855
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "id"

    const-wide/16 v2, -0x1

    .line 856
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "type"

    .line 857
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private maintainPosition()V
    .locals 4

    const/16 v0, 0x8

    :cond_0
    :goto_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    .line 599
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAdapters:[Lch/blinkenlights/android/vanilla/LibraryAdapter;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 600
    sget-object v2, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->sLruAdapterPos:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;

    aget-object v1, v1, v0

    iget-object v3, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mLists:[Landroid/widget/ListView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;->storePosition(Lch/blinkenlights/android/vanilla/LibraryAdapter;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private postRunQuery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V
    .locals 3

    .line 743
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mRequeryNeeded:[Z

    invoke-interface {p1}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->getMediaType()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 744
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mWorkerHandler:Landroid/os/Handler;

    .line 745
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 746
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private requeryIfNeeded(I)V
    .locals 2

    .line 756
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAdapters:[Lch/blinkenlights/android/vanilla/LibraryAdapter;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 757
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mRequeryNeeded:[Z

    aget-boolean p1, v1, p1

    if-eqz p1, :cond_0

    .line 758
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->postRunQuery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V

    :cond_0
    return-void
.end method

.method private restorePosition(I)V
    .locals 3

    .line 610
    sget-object v0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->sLruAdapterPos:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAdapters:[Lch/blinkenlights/android/vanilla/LibraryAdapter;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter$AdaperPositionLruCache;->popPosition(Lch/blinkenlights/android/vanilla/LibraryAdapter;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mLists:[Landroid/widget/ListView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 612
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mLists:[Landroid/widget/ListView;

    aget-object p1, v1, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearLimiter(I)V
    .locals 3

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->maintainPosition()V

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    .line 458
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mFilesAdapter:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    if-nez p1, :cond_0

    .line 459
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingFileLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_4

    .line 461
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 464
    :cond_1
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mArtistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez p1, :cond_2

    .line 465
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingArtistLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :goto_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbArtAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez p1, :cond_3

    .line 470
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingAlbArtLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_1

    .line 472
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    :goto_1
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mComposerAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez p1, :cond_4

    .line 475
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingComposerLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_2

    .line 477
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :goto_2
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez p1, :cond_5

    .line 480
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingAlbumLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_3

    .line 482
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :goto_3
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mSongAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez p1, :cond_6

    .line 485
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingSongLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_4

    .line 487
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/vanilla/LibraryAdapter;

    .line 492
    invoke-interface {v0, v1}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V

    .line 493
    move-object v2, v0

    check-cast v2, Lch/blinkenlights/android/vanilla/SortableAdapter;

    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->loadSortOrder(Lch/blinkenlights/android/vanilla/SortableAdapter;)V

    .line 494
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->requestRequery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V

    goto :goto_5

    :cond_7
    return-void
.end method

.method public computeExpansions()V
    .locals 6

    .line 265
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mArtistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-virtual {p0, v3}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v5

    if-eq v5, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v0, v5}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setExpandable(Z)V

    .line 267
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-eqz v0, :cond_4

    .line 268
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v5

    if-eq v5, v4, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v0, v5}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setExpandable(Z)V

    .line 269
    :cond_4
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mGenreAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-eqz v0, :cond_6

    .line 270
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v2

    if-eq v2, v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setExpandable(Z)V

    :cond_6
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 367
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 379
    iget v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mTabCount:I

    return v0
.end method

.method public getCurrentLimiter()Lch/blinkenlights/android/vanilla/Limiter;
    .locals 1

    .line 620
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 623
    :cond_0
    invoke-interface {v0}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->getLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 359
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 360
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    :cond_0
    return p1
.end method

.method public getMediaTypePosition(I)I
    .locals 3

    .line 632
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mTabOrder:[I

    .line 633
    iget v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mTabCount:I

    :cond_0
    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    .line 634
    aget v2, v0, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_1
    return v2
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3

    .line 373
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->TITLES:[I

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mTabOrder:[I

    aget p1, v2, p1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 670
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_0

    return v1

    .line 683
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 684
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAdapters:[Lch/blinkenlights/android/vanilla/LibraryAdapter;

    aget-object v1, v1, v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, p1}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->commitQuery(Ljava/lang/Object;)V

    .line 685
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->restorePosition(I)V

    goto :goto_0

    .line 696
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lch/blinkenlights/android/vanilla/LibraryAdapter;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->requestRequery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V

    goto :goto_0

    .line 689
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lch/blinkenlights/android/vanilla/SortableAdapter;

    .line 690
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 691
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SortableAdapter;->getSortSettingsKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SortableAdapter;->getSortMode()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 692
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 673
    :cond_3
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lch/blinkenlights/android/vanilla/LibraryAdapter;

    .line 674
    invoke-interface {p1}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->getMediaType()I

    move-result v0

    .line 675
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mUiHandler:Landroid/os/Handler;

    .line 676
    invoke-interface {p1}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->query()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 678
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v3
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .line 276
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mTabOrder:[I

    aget p2, v0, p2

    .line 277
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mLists:[Landroid/widget/ListView;

    aget-object v0, v0, p2

    if-nez v0, :cond_9

    .line 280
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    .line 281
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p2, :pswitch_data_0

    .line 325
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid media type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :pswitch_0
    new-instance v2, Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    iget-object v3, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingFileLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    invoke-direct {v2, v0, v3}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;-><init>(Lch/blinkenlights/android/vanilla/LibraryActivity;Lch/blinkenlights/android/vanilla/Limiter;)V

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mFilesAdapter:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    .line 321
    iput-object v6, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingFileLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    .line 322
    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    invoke-virtual {v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/vanilla/DraggableRow;

    move-object v7, v2

    goto/16 :goto_1

    .line 297
    :pswitch_1
    new-instance v7, Lch/blinkenlights/android/vanilla/MediaAdapter;

    const/4 v8, 0x6

    iget-object v9, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingComposerLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    invoke-direct {v7, v0, v8, v9, v0}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v7, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mComposerAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 298
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mComposerAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v5}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v0, v3}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setExpandable(Z)V

    .line 299
    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    invoke-virtual {v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/vanilla/DraggableRow;

    goto/16 :goto_1

    .line 292
    :pswitch_2
    new-instance v7, Lch/blinkenlights/android/vanilla/MediaAdapter;

    const/4 v8, 0x5

    iget-object v9, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingAlbArtLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    invoke-direct {v7, v0, v8, v9, v0}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v7, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbArtAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 293
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbArtAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, v5}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v2

    if-eq v2, v4, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v0, v3}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setExpandable(Z)V

    .line 294
    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    invoke-virtual {v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/vanilla/DraggableRow;

    goto/16 :goto_1

    .line 316
    :pswitch_3
    new-instance v7, Lch/blinkenlights/android/vanilla/MediaAdapter;

    const/4 v8, 0x4

    invoke-direct {v7, v0, v8, v6, v0}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v7, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mGenreAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 317
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mGenreAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v2

    if-eq v2, v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {v0, v3}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setExpandable(Z)V

    goto :goto_0

    .line 313
    :pswitch_4
    new-instance v2, Lch/blinkenlights/android/vanilla/MediaAdapter;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3, v6, v0}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPlaylistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-object v7, v2

    :goto_0
    move-object v0, v6

    goto :goto_1

    .line 308
    :pswitch_5
    new-instance v3, Lch/blinkenlights/android/vanilla/MediaAdapter;

    iget-object v4, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingSongLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    invoke-direct {v3, v0, v2, v4, v0}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v3, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mSongAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 309
    iput-object v6, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingSongLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    .line 310
    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    invoke-virtual {v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/vanilla/DraggableRow;

    move-object v7, v3

    goto :goto_1

    .line 302
    :pswitch_6
    new-instance v7, Lch/blinkenlights/android/vanilla/MediaAdapter;

    iget-object v8, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingAlbumLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    invoke-direct {v7, v0, v5, v8, v0}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v7, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 303
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v2

    if-eq v2, v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-virtual {v0, v3}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setExpandable(Z)V

    .line 304
    iput-object v6, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingAlbumLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    .line 305
    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    invoke-virtual {v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/vanilla/DraggableRow;

    goto :goto_1

    .line 287
    :pswitch_7
    new-instance v7, Lch/blinkenlights/android/vanilla/MediaAdapter;

    iget-object v8, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingArtistLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    invoke-direct {v7, v0, v3, v8, v0}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v7, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mArtistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 288
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mArtistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v2

    if-ne v2, v4, :cond_6

    invoke-virtual {p0, v5}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v2

    if-eq v2, v4, :cond_7

    :cond_6
    const/4 v3, 0x1

    :cond_7
    invoke-virtual {v0, v3}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setExpandable(Z)V

    .line 289
    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    invoke-virtual {v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/vanilla/DraggableRow;

    .line 328
    :goto_1
    new-instance v2, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;

    invoke-direct {v2, p0}, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;-><init>(Lch/blinkenlights/android/vanilla/ext/CoordClickListener$Callback;)V

    .line 329
    sget v3, Lch/blinkenlights/android/vanilla/R$layout;->listview:I

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 330
    invoke-virtual {v2, v1}, Lch/blinkenlights/android/vanilla/ext/CoordClickListener;->registerForOnItemLongClickListener(Landroid/widget/ListView;)V

    .line 331
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    .line 335
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mHeaderText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lch/blinkenlights/android/vanilla/DraggableRow;->setText(Ljava/lang/CharSequence;)V

    .line 336
    new-instance v2, Lch/blinkenlights/android/vanilla/ViewHolder;

    invoke-direct {v2}, Lch/blinkenlights/android/vanilla/ViewHolder;-><init>()V

    invoke-virtual {v0, v2}, Lch/blinkenlights/android/vanilla/DraggableRow;->setTag(Ljava/lang/Object;)V

    .line 337
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 338
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_8
    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 342
    invoke-virtual {p0, v7}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->loadSortOrder(Lch/blinkenlights/android/vanilla/SortableAdapter;)V

    .line 344
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mFilter:Ljava/lang/String;

    invoke-interface {v7, v0}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->setFilter(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAdapters:[Lch/blinkenlights/android/vanilla/LibraryAdapter;

    aput-object v7, v0, p2

    .line 347
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mLists:[Landroid/widget/ListView;

    aput-object v1, v0, p2

    .line 348
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mRequeryNeeded:[Z

    aput-boolean v5, v0, p2

    move-object v0, v1

    .line 351
    :cond_9
    invoke-direct {p0, p2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->requeryIfNeeded(I)V

    .line 352
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invalidateData()V
    .locals 4

    .line 767
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAdapters:[Lch/blinkenlights/android/vanilla/LibraryAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 769
    invoke-virtual {p0, v3}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->postRequestRequery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadSortOrder(Lch/blinkenlights/android/vanilla/SortableAdapter;)V
    .locals 3

    .line 782
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SortableAdapter;->getSortSettingsKey()Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SortableAdapter;->getDefaultSortMode()I

    move-result v1

    .line 784
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-static {v2}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 785
    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/SortableAdapter;->setSortMode(I)V

    return-void
.end method

.method public loadTabOrder()Z
    .locals 8

    .line 220
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lch/blinkenlights/android/vanilla/PrefDefaults;->TAB_ORDER:Ljava/lang/String;

    const-string v2, "tab_order"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    .line 221
    new-array v2, v1, [I

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 225
    new-array v2, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eq v4, v1, :cond_3

    .line 227
    aget-char v6, v0, v4

    const/16 v7, 0x80

    if-lt v6, v7, :cond_1

    add-int/lit8 v6, v6, -0x80

    int-to-char v6, v6

    if-lt v6, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v5, 0x1

    .line 235
    aput v6, v2, v5

    move v5, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v5, 0x0

    :cond_3
    if-nez v5, :cond_5

    const/4 v0, 0x0

    :goto_2
    if-eq v0, v1, :cond_5

    .line 243
    sget-object v4, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->DEFAULT_TAB_VISIBILITY:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_4

    add-int/lit8 v4, v5, 0x1

    .line 244
    sget-object v6, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->DEFAULT_TAB_ORDER:[I

    aget v6, v6, v0

    aput v6, v2, v5

    move v5, v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 248
    :cond_5
    iget v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mTabCount:I

    if-ne v5, v0, :cond_7

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mTabOrder:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    return v3

    .line 249
    :cond_7
    :goto_3
    iput-object v2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mTabOrder:[I

    .line 250
    iput v5, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mTabCount:I

    .line 251
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 252
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->computeExpansions()V

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long p1, p4, v0

    if-nez p1, :cond_0

    .line 886
    invoke-static {p2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->createHeaderIntent(Landroid/view/View;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    invoke-interface {p1, p2}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->createData(Landroid/view/View;)Landroid/content/Intent;

    move-result-object p1

    .line 887
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x7

    if-ne p2, p3, :cond_1

    .line 890
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mFilesAdapter:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_1

    .line 892
    :cond_1
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->onItemClicked(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public onItemLongClickWithCoords(Landroid/widget/AdapterView;Landroid/view/View;IJFF)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJFF)Z"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long p1, p4, v0

    if-nez p1, :cond_0

    .line 875
    invoke-static {p2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->createHeaderIntent(Landroid/view/View;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    invoke-interface {p1, p2}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->createData(Landroid/view/View;)Landroid/content/Intent;

    move-result-object p1

    .line 876
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 p4, 0x7

    if-ne p3, p4, :cond_1

    .line 879
    iget-object p3, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mFilesAdapter:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    invoke-virtual {p3, p1, p2, p6, p7}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->onCreateFancyMenu(Landroid/content/Intent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    .line 881
    :cond_1
    iget-object p3, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-virtual {p3, p1, p2, p6, p7}, Lch/blinkenlights/android/vanilla/LibraryActivity;->onCreateFancyMenu(Landroid/content/Intent;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    const/4 v0, 0x0

    .line 846
    invoke-virtual {p0, v0, p1, v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public onSongChange(Lch/blinkenlights/android/vanilla/Song;)V
    .locals 6

    .line 902
    iget v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 905
    :cond_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mTabOrder:[I

    aget v0, v1, v0

    .line 906
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mLists:[Landroid/widget/ListView;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    return-void

    .line 910
    :cond_1
    invoke-static {p1, v0}, Lch/blinkenlights/android/vanilla/MediaUtils;->getCurrentIdForType(Lch/blinkenlights/android/vanilla/Song;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return-void

    .line 915
    :cond_2
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    const-string v4, "enable_scroll_to_song"

    .line 916
    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 918
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result p1

    if-ge v0, p1, :cond_5

    .line 919
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_4

    .line 921
    invoke-virtual {v1}, Landroid/widget/ListView;->isShown()Z

    move-result p1

    .line 922
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    if-eqz p1, :cond_3

    sub-int/2addr v2, v0

    .line 923
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v2, 0x1e

    if-ge p1, v2, :cond_3

    .line 924
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_1

    .line 926
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public postRequestRequery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V
    .locals 2

    .line 732
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 733
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestRequery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V
    .locals 3

    .line 714
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    if-ne p1, v0, :cond_0

    .line 715
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->postRunQuery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V

    goto :goto_0

    .line 717
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mRequeryNeeded:[Z

    invoke-interface {p1}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->getMediaType()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 720
    invoke-interface {p1}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->clear()V

    :goto_0
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 404
    check-cast p1, Landroid/os/Bundle;

    const-string p2, "limiter_artists"

    .line 405
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lch/blinkenlights/android/vanilla/Limiter;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingArtistLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    const-string p2, "limiter_albumartists"

    .line 406
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lch/blinkenlights/android/vanilla/Limiter;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingAlbArtLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    const-string p2, "limiter_composer"

    .line 407
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lch/blinkenlights/android/vanilla/Limiter;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingComposerLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    const-string p2, "limiter_albums"

    .line 408
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lch/blinkenlights/android/vanilla/Limiter;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingAlbumLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    const-string p2, "limiter_songs"

    .line 409
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lch/blinkenlights/android/vanilla/Limiter;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingSongLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    const-string p2, "limiter_files"

    .line 410
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/Limiter;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingFileLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 3

    .line 416
    new-instance v0, Landroid/os/Bundle;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 417
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mArtistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->getLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v1

    const-string v2, "limiter_artists"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 419
    :cond_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbArtAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->getLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v1

    const-string v2, "limiter_albumartists"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 421
    :cond_1
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mComposerAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-eqz v1, :cond_2

    .line 422
    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->getLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v1

    const-string v2, "limiter_composer"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 423
    :cond_2
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-eqz v1, :cond_3

    .line 424
    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->getLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v1

    const-string v2, "limiter_albums"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 425
    :cond_3
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mSongAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-eqz v1, :cond_4

    .line 426
    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->getLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v1

    const-string v2, "limiter_songs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 427
    :cond_4
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mFilesAdapter:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    if-eqz v1, :cond_5

    .line 428
    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->getLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v1

    const-string v2, "limiter_files"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 430
    :cond_5
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->maintainPosition()V

    return-object v0
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 4

    .line 814
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 817
    :cond_0
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mFilter:Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAdapters:[Lch/blinkenlights/android/vanilla/LibraryAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 820
    invoke-interface {v3, p1}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->setFilter(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0, v3}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->requestRequery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 2

    .line 440
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/blinkenlights/android/vanilla/DraggableRow;

    .line 441
    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/DraggableRow;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 443
    :cond_0
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mHeaderText:Ljava/lang/String;

    return-void
.end method

.method public setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)I
    .locals 7

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->maintainPosition()V

    .line 511
    iget v1, p1, Lch/blinkenlights/android/vanilla/Limiter;->type:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_b

    if-eq v1, v4, :cond_9

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v1, v5, :cond_2

    const/4 v5, 0x5

    if-eq v1, v5, :cond_b

    const/4 v5, 0x6

    if-eq v1, v5, :cond_b

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 570
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mFilesAdapter:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    if-nez v1, :cond_0

    .line 571
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingFileLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mLists:[Landroid/widget/ListView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 579
    :goto_0
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v1

    goto/16 :goto_9

    .line 582
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported limiter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lch/blinkenlights/android/vanilla/Limiter;->type:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_2
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mArtistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez v1, :cond_3

    .line 539
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingArtistLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_1

    .line 541
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    :goto_1
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbArtAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez v1, :cond_4

    .line 544
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingAlbArtLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_2

    .line 546
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :goto_2
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mComposerAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez v1, :cond_5

    .line 549
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingComposerLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_3

    .line 551
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    :goto_3
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez v1, :cond_6

    .line 554
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingAlbumLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_4

    .line 556
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    :goto_4
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mSongAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez v1, :cond_7

    .line 559
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingSongLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_5

    .line 561
    :cond_7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :goto_5
    invoke-virtual {p0, v6}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 565
    invoke-virtual {p0, v4}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v1

    :cond_8
    if-ne v1, v2, :cond_e

    .line 567
    invoke-virtual {p0, v3}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v1

    goto :goto_9

    .line 513
    :cond_9
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mSongAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez v1, :cond_a

    .line 514
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingSongLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_6

    .line 516
    :cond_a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :goto_6
    invoke-virtual {p0, v3}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v1

    goto :goto_9

    .line 523
    :cond_b
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez v1, :cond_c

    .line 524
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingAlbumLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_7

    .line 526
    :cond_c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :goto_7
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mSongAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    if-nez v1, :cond_d

    .line 529
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mPendingSongLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    goto :goto_8

    .line 531
    :cond_d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :goto_8
    invoke-virtual {p0, v4}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v1

    if-ne v1, v2, :cond_e

    .line 535
    invoke-virtual {p0, v3}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result v1

    .line 585
    :cond_e
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/blinkenlights/android/vanilla/LibraryAdapter;

    .line 586
    invoke-interface {v2, p1}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V

    .line 587
    move-object v3, v2

    check-cast v3, Lch/blinkenlights/android/vanilla/SortableAdapter;

    invoke-virtual {p0, v3}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->loadSortOrder(Lch/blinkenlights/android/vanilla/SortableAdapter;)V

    .line 588
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->requestRequery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V

    goto :goto_a

    :cond_f
    return v1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 391
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mTabOrder:[I

    aget p1, p1, p2

    .line 392
    iget-object p3, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAdapters:[Lch/blinkenlights/android/vanilla/LibraryAdapter;

    aget-object p3, p3, p1

    .line 393
    iget v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentPage:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    if-eq p3, v0, :cond_1

    .line 394
    :cond_0
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->requeryIfNeeded(I)V

    .line 395
    iput-object p3, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    .line 396
    iput p2, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentPage:I

    .line 397
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-virtual {p1, p2, p3}, Lch/blinkenlights/android/vanilla/LibraryActivity;->onPageChanged(ILch/blinkenlights/android/vanilla/LibraryAdapter;)V

    :cond_1
    return-void
.end method

.method public setSortMode(I)V
    .locals 2

    .line 798
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    check-cast v0, Lch/blinkenlights/android/vanilla/SortableAdapter;

    .line 799
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/SortableAdapter;->getSortMode()I

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    .line 802
    :cond_0
    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/SortableAdapter;->setSortMode(I)V

    .line 803
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->requestRequery(Lch/blinkenlights/android/vanilla/LibraryAdapter;)V

    .line 805
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 806
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

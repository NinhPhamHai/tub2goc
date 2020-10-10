.class public Lch/blinkenlights/android/vanilla/LibraryActivity;
.super Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;
.source "LibraryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;


# static fields
.field private static final modeForAction:[I


# instance fields
.field private mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

.field private mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

.field private mDefaultAction:I

.field private mJumpToEnqueuedOnPlay:Z

.field private mLastAction:I

.field private mLimiterScroller:Landroid/widget/HorizontalScrollView;

.field private mLimiterViews:Landroid/view/ViewGroup;

.field public mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

.field private mVanillaTabLayout:Landroid/support/iosched/tabs/VanillaTabLayout;

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 124
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lch/blinkenlights/android/vanilla/LibraryActivity;->modeForAction:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        -0x1
        0x4
        0x5
        -0x1
        -0x1
        -0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLastAction:I

    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/LibraryActivity;)Lch/blinkenlights/android/vanilla/BottomBarControls;
    .locals 0

    .line 66
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    return-object p0
.end method

.method private checkForLaunch(Landroid/content/Intent;)V
    .locals 3

    .line 244
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "playback_on_startup"

    const/4 v2, 0x0

    .line 245
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private editPlaylist(Landroid/content/Intent;)V
    .locals 4

    .line 701
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lch/blinkenlights/android/vanilla/PlaylistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    const-wide/16 v2, -0x2

    .line 702
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "playlist"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "title"

    .line 703
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private expand(Landroid/content/Intent;)V
    .locals 5

    .line 437
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/BottomBarControls;->showSearch(Z)Z

    const/4 v0, -0x1

    const-string v1, "type"

    .line 438
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "id"

    const-wide/16 v3, -0x2

    .line 439
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 440
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    iget-object v4, p1, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->mAdapters:[Lch/blinkenlights/android/vanilla/LibraryAdapter;

    aget-object v1, v4, v1

    invoke-interface {v1, v2, v3}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->buildLimiter(J)Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v1

    invoke-virtual {p1, v1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 441
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 442
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateLimiterViews()V

    :goto_1
    return-void
.end method

.method private loadLimiterIntent(Landroid/content/Intent;)V
    .locals 8

    const/4 v0, -0x1

    const-string v1, "type"

    .line 258
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-wide/16 v2, -0x1

    const-string v4, "id"

    .line 259
    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "folder"

    .line 260
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x7

    if-ne v1, v7, :cond_0

    if-eqz p1, :cond_0

    .line 263
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->buildLimiter(Ljava/io/File;)Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v6

    goto :goto_0

    :cond_0
    if-eq v1, v0, :cond_1

    cmp-long p1, v4, v2

    if-eqz p1, :cond_1

    .line 265
    new-instance p1, Lch/blinkenlights/android/vanilla/MediaAdapter;

    invoke-direct {p1, p0, v1, v6, v6}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    .line 266
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->query()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p1, v1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->commitQuery(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p1, v4, v5}, Lch/blinkenlights/android/vanilla/MediaAdapter;->buildLimiter(J)Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v6

    :cond_1
    :goto_0
    if-eqz v6, :cond_4

    .line 271
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {p1, v6}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 272
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 275
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 273
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateLimiterViews()V

    :cond_4
    :goto_2
    return-void
.end method

.method private loadPreferences()V
    .locals 3

    .line 222
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_action_int"

    const-string v2, "9"

    .line 223
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mDefaultAction:I

    const-string v1, "jump_to_enqueued_on_play"

    const/4 v2, 0x1

    .line 224
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mJumpToEnqueuedOnPlay:Z

    return-void
.end method

.method private loadTabOrder()V
    .locals 2

    .line 232
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->loadTabOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mVanillaTabLayout:Landroid/support/iosched/tabs/VanillaTabLayout;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/iosched/tabs/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_0
    return-void
.end method

.method private pickSongs(Landroid/content/Intent;I)V
    .locals 11

    const-string v0, "id"

    const-wide/16 v1, -0x2

    .line 386
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 387
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    invoke-interface {v2}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->getMediaType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_0

    if-ne v2, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    if-nez p2, :cond_1

    .line 391
    iget-boolean v6, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mJumpToEnqueuedOnPlay:Z

    if-eqz v6, :cond_1

    .line 392
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->getQueuePositionForSongId(J)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_1

    .line 395
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1, v6}, Lch/blinkenlights/android/vanilla/PlaybackService;->jumpToQueuePosition(I)V

    .line 396
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->jumping_to_song:I

    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const/4 v6, 0x4

    const-wide/16 v7, -0x1

    const/4 v9, 0x3

    if-eq p2, v9, :cond_3

    if-ne p2, v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, p2

    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    :goto_1
    cmp-long v10, v0, v7

    if-eqz v10, :cond_5

    if-le v2, v3, :cond_4

    const/4 v10, 0x7

    if-eq v2, v10, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-ne p2, v6, :cond_6

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    if-ne p2, v9, :cond_7

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    move v6, p2

    const/4 v2, 0x1

    :goto_4
    cmp-long v9, v0, v7

    if-nez v9, :cond_8

    const/4 v2, 0x1

    :cond_8
    if-eqz v2, :cond_9

    .line 418
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, v5, v0}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->buildQueryFromIntent(Landroid/content/Intent;ZLch/blinkenlights/android/vanilla/LibraryAdapter;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    .line 419
    sget-object v0, Lch/blinkenlights/android/vanilla/LibraryActivity;->modeForAction:[I

    aget v0, v0, v6

    iput v0, p1, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    .line 420
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->addSongs(Lch/blinkenlights/android/vanilla/QueryTask;)V

    .line 422
    iget p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mDefaultAction:I

    if-ne p1, v3, :cond_a

    iget p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLastAction:I

    if-eq p1, p2, :cond_a

    .line 423
    iput p2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLastAction:I

    .line 424
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateHeaders()V

    :cond_a
    return-void
.end method

.method private setLimiter(ILjava/lang/String;)V
    .locals 10

    const-string v0, "artist_id"

    const-string v1, "album_id"

    const-string v2, "artist"

    const-string v3, "album"

    .line 591
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 592
    new-instance v0, Lch/blinkenlights/android/vanilla/QueryTask;

    const-string v5, "_songs_albums_artists"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lch/blinkenlights/android/vanilla/QueryTask;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2}, Lch/blinkenlights/android/vanilla/QueryTask;->runQuery(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 596
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_0

    .line 605
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 606
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "album_id=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 609
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLimiter() does not support limiter type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 601
    :cond_1
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 602
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "artist_id=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 611
    :goto_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    new-instance v2, Lch/blinkenlights/android/vanilla/Limiter;

    invoke-direct {v2, p1, v3, v0}, Lch/blinkenlights/android/vanilla/Limiter;-><init>(I[Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)I

    .line 613
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method private updateCover(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 543
    new-instance v0, Lch/blinkenlights/android/vanilla/LibraryActivity$1;

    invoke-direct {v0, p0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity$1;-><init>(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateHeaders()V
    .locals 3

    .line 368
    iget v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mDefaultAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 370
    iget v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLastAction:I

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 372
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->enqueue_all:I

    goto :goto_1

    :cond_3
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->play_all:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {v1, v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->setHeaderText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 910
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 928
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 919
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    if-eqz p1, :cond_1

    .line 921
    invoke-virtual {p1, p0}, Lch/blinkenlights/android/vanilla/Song;->getSmallCover(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 924
    :cond_1
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateCover(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 912
    :cond_2
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 913
    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v1, "library_page"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 914
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 965
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 554
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    if-ne p1, v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->openPlaybackActivity()V

    goto :goto_2

    .line 556
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 560
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getCurrentLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v0

    .line 561
    iget v1, v0, Lch/blinkenlights/android/vanilla/Limiter;->type:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    .line 563
    iget-object v0, v0, Lch/blinkenlights/android/vanilla/Limiter;->data:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->setLimiter(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    if-lez p1, :cond_3

    const/4 v1, 0x7

    .line 565
    iget v2, v0, Lch/blinkenlights/android/vanilla/Limiter;->type:I

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 566
    iget-object v1, v0, Lch/blinkenlights/android/vanilla/Limiter;->data:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    .line 567
    iget-object v0, v0, Lch/blinkenlights/android/vanilla/Limiter;->names:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, p1

    :goto_0
    const/4 p1, -0x1

    add-int/2addr v0, p1

    if-eq v0, p1, :cond_2

    .line 569
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 571
    :cond_2
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->buildLimiter(Ljava/io/File;)Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)I

    goto :goto_1

    .line 573
    :cond_3
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {p1, v1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->clearLimiter(I)V

    .line 575
    :goto_1
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateLimiterViews()V

    goto :goto_2

    .line 577
    :cond_4
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onClick(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 161
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->Library:I

    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->setTheme(Landroid/content/Context;I)V

    .line 162
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->checkForLaunch(Landroid/content/Intent;)V

    .line 168
    :cond_0
    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->library_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 170
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->limiter_scroller:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLimiterScroller:Landroid/widget/HorizontalScrollView;

    .line 171
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->limiter_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLimiterViews:Landroid/view/ViewGroup;

    .line 173
    new-instance v0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;-><init>(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/os/Looper;)V

    .line 174
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    .line 176
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->pager:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 177
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 178
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 180
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 182
    sget v3, Lch/blinkenlights/android/vanilla/R$id;->bottombar_controls:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lch/blinkenlights/android/vanilla/BottomBarControls;

    iput-object v3, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    .line 183
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    invoke-virtual {v3, p0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    invoke-virtual {v3, p0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 185
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    invoke-virtual {v3, p0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->enableOptionsMenu(Landroid/app/Activity;)V

    .line 187
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->havePermissions(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->showWarning(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/content/Intent;)V

    .line 191
    :cond_1
    sget v3, Lch/blinkenlights/android/vanilla/R$id;->sliding_tabs:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/iosched/tabs/VanillaTabLayout;

    iput-object v3, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mVanillaTabLayout:Landroid/support/iosched/tabs/VanillaTabLayout;

    .line 192
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mVanillaTabLayout:Landroid/support/iosched/tabs/VanillaTabLayout;

    invoke-virtual {v3, v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 194
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->loadTabOrder()V

    const/4 v0, 0x0

    const-string v3, "library_page"

    .line 195
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 200
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->loadLimiterIntent(Landroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->bindControlButtons()V

    if-eqz p1, :cond_3

    const-string v0, "launch_search"

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 204
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->showSearch(Z)Z

    :cond_3
    return-void
.end method

.method public onCreateFancyMenu(Landroid/content/Intent;Landroid/view/View;FF)Z
    .locals 11

    .line 643
    new-instance v0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;

    invoke-direct {v0, p0, p0}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;-><init>(Landroid/content/Context;Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;)V

    const/16 v1, 0x14

    .line 645
    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->addSpacer(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 646
    sget v2, Lch/blinkenlights/android/vanilla/R$drawable;->menu_add_to_playlist:I

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->add_to_playlist:I

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v1, v2, v3}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v2

    invoke-virtual {v2, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    const-string v2, "id"

    const-wide/16 v3, -0x2

    .line 648
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v4, 0x6

    const/4 v5, 0x7

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    cmp-long v10, v2, v8

    if-nez v10, :cond_0

    .line 649
    sget v1, Lch/blinkenlights/android/vanilla/R$string;->all_songs:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->setHeaderTitle(Ljava/lang/String;)V

    .line 650
    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_play_all:I

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->play_all:I

    invoke-virtual {v0, v4, v6, v1, v2}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 651
    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_enqueue:I

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->enqueue_all:I

    invoke-virtual {v0, v5, v6, v1, v2}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    goto/16 :goto_1

    :cond_0
    const/4 v2, -0x1

    const-string v3, "type"

    .line 653
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "title"

    .line 655
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->setHeaderTitle(Ljava/lang/String;)V

    if-eq v2, v5, :cond_1

    const/16 v3, 0xd

    .line 658
    sget v8, Lch/blinkenlights/android/vanilla/R$drawable;->menu_add_to_homescreen:I

    sget v9, Lch/blinkenlights/android/vanilla/R$string;->add_to_homescreen:I

    invoke-virtual {v0, v3, v1, v8, v9}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 660
    :cond_1
    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FileUtils;->canDispatchIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_launch:I

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->open:I

    invoke-virtual {v0, v6, v6, v1, v3}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 663
    :cond_2
    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->menu_play:I

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->play:I

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v1, v3}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    const/4 v1, 0x2

    if-le v2, v1, :cond_3

    if-ne v2, v5, :cond_4

    .line 665
    :cond_3
    sget v3, Lch/blinkenlights/android/vanilla/R$drawable;->menu_play_all:I

    sget v5, Lch/blinkenlights/android/vanilla/R$string;->play_all:I

    invoke-virtual {v0, v4, v7, v3, v5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v3

    invoke-virtual {v3, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 667
    :cond_4
    sget v3, Lch/blinkenlights/android/vanilla/R$drawable;->menu_enqueue_as_next:I

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->enqueue_as_next:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v7, v3, v4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v3

    invoke-virtual {v3, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 668
    sget v3, Lch/blinkenlights/android/vanilla/R$drawable;->menu_enqueue:I

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->enqueue:I

    invoke-virtual {v0, v7, v7, v3, v4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v3

    invoke-virtual {v3, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    if-ne v2, v5, :cond_5

    const/4 v3, 0x5

    .line 671
    sget v4, Lch/blinkenlights/android/vanilla/R$drawable;->menu_edit:I

    sget v5, Lch/blinkenlights/android/vanilla/R$string;->rename:I

    invoke-virtual {v0, v3, v6, v4, v5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v3

    invoke-virtual {v3, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    goto :goto_0

    :cond_5
    const-string v3, "expandable"

    .line 672
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 673
    sget v3, Lch/blinkenlights/android/vanilla/R$drawable;->menu_expand:I

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->expand:I

    invoke-virtual {v0, v1, v1, v3, v4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v3

    invoke-virtual {v3, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    :cond_6
    :goto_0
    if-eq v2, v1, :cond_7

    if-ne v2, v7, :cond_8

    :cond_7
    const/16 v3, 0x1e

    .line 677
    invoke-virtual {v0, v3}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->addSpacer(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    const/16 v4, 0x9

    .line 678
    sget v5, Lch/blinkenlights/android/vanilla/R$drawable;->menu_artist:I

    sget v6, Lch/blinkenlights/android/vanilla/R$string;->more_from_artist:I

    invoke-virtual {v0, v4, v3, v5, v6}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v4

    invoke-virtual {v4, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    if-ne v2, v1, :cond_8

    const/16 v1, 0x8

    .line 681
    sget v2, Lch/blinkenlights/android/vanilla/R$drawable;->menu_album:I

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->more_from_album:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    const/16 v1, 0xc

    .line 682
    sget v2, Lch/blinkenlights/android/vanilla/R$drawable;->menu_details:I

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->details:I

    const/16 v4, 0x63

    invoke-virtual {v0, v1, v4, v2, v3}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 683
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PluginUtils;->checkPlugins(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0xb

    .line 685
    sget v2, Lch/blinkenlights/android/vanilla/R$drawable;->menu_plugins:I

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->plugins:I

    invoke-virtual {v0, v1, v4, v2, v3}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    :cond_8
    const/16 v1, 0x5a

    .line 689
    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->addSpacer(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    const/4 v2, 0x4

    .line 690
    sget v3, Lch/blinkenlights/android/vanilla/R$drawable;->menu_delete:I

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->delete:I

    invoke-virtual {v0, v2, v1, v3, v4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 692
    :goto_1
    invoke-virtual {v0, p2, p3, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->show(Landroid/view/View;FF)V

    return v7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 815
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 816
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->playback_view:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 817
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->search:I

    const/4 v2, 0x4

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v2, Lch/blinkenlights/android/vanilla/R$drawable;->ic_menu_search:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 818
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->go_home:I

    const/16 v2, 0x1e

    const/16 v3, 0x13

    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 819
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->sort_by:I

    const/4 v3, 0x1

    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    sget v0, Lch/blinkenlights/android/vanilla/R$drawable;->ic_menu_sort_alphabetically:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 971
    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 972
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 974
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->reverse_sort:I

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 975
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    not-int v0, v0

    .line 979
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->setSortMode(I)V

    return-void
.end method

.method public onFancyItemSelected(Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;)Z
    .locals 11

    .line 709
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 710
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->getItemId()I

    move-result v1

    const-string v2, "_id="

    const-string v3, "title"

    const-wide/16 v4, -0x2

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const-string v9, "id"

    const/4 v10, 0x1

    packed-switch v1, :pswitch_data_0

    .line 807
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 794
    :pswitch_0
    invoke-virtual {v0, v9, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long p1, v1, v6

    if-nez p1, :cond_0

    .line 795
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, v0, p1}, Lch/blinkenlights/android/vanilla/PlaylistDialog;->newInstance(Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;Landroid/content/Intent;Lch/blinkenlights/android/vanilla/LibraryAdapter;)Lch/blinkenlights/android/vanilla/PlaylistDialog;

    move-result-object p1

    .line 796
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "PlaylistDialog"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 770
    :pswitch_1
    invoke-virtual {v0, v9, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 771
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;->show(Landroid/app/FragmentManager;J)V

    goto/16 :goto_1

    .line 774
    :pswitch_2
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->showPluginMenu(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 766
    :pswitch_3
    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/FileUtils;->dispatchIntent(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/content/Intent;)Z

    goto/16 :goto_1

    :pswitch_4
    const/4 p1, -0x1

    const-string v1, "type"

    .line 779
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v10, :cond_1

    const-string v2, "album_id="

    .line 784
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 785
    invoke-direct {p0, v8, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->setLimiter(ILjava/lang/String;)V

    .line 786
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateLimiterViews()V

    goto/16 :goto_1

    .line 790
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v10, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->setLimiter(ILjava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateLimiterViews()V

    goto/16 :goto_1

    :pswitch_6
    const/4 p1, 0x4

    .line 730
    invoke-direct {p0, v0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->pickSongs(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :pswitch_7
    const/4 p1, 0x3

    .line 727
    invoke-direct {p0, v0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->pickSongs(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 736
    :pswitch_8
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 737
    invoke-virtual {v0, v9, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 738
    new-instance v2, Lch/blinkenlights/android/vanilla/LibraryActivity$2;

    invoke-direct {v2, p0, v0, v1}, Lch/blinkenlights/android/vanilla/LibraryActivity$2;-><init>(Lch/blinkenlights/android/vanilla/LibraryActivity;J)V

    sget v0, Lch/blinkenlights/android/vanilla/R$string;->rename:I

    invoke-static {v2, p1, v0}, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->newInstance(Lch/blinkenlights/android/vanilla/PlaylistInputDialog$Callback;Ljava/lang/String;I)Lch/blinkenlights/android/vanilla/PlaylistInputDialog;

    move-result-object p1

    .line 745
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "RenamePlaylistInputDialog"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 749
    :pswitch_9
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->delete_item:I

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 750
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 751
    sget v2, Lch/blinkenlights/android/vanilla/R$string;->delete:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 753
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->delete:I

    new-instance v3, Lch/blinkenlights/android/vanilla/LibraryActivity$4;

    invoke-direct {v3, p0, v0}, Lch/blinkenlights/android/vanilla/LibraryActivity$4;-><init>(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/content/Intent;)V

    .line 754
    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v2, Lch/blinkenlights/android/vanilla/LibraryActivity$3;

    invoke-direct {v2, p0}, Lch/blinkenlights/android/vanilla/LibraryActivity$3;-><init>(Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    .line 759
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 763
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :pswitch_a
    const/16 p1, 0x8

    .line 733
    invoke-direct {p0, v0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->pickSongs(Landroid/content/Intent;I)V

    goto :goto_1

    .line 714
    :pswitch_b
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->expand(Landroid/content/Intent;)V

    .line 715
    iget p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mDefaultAction:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLastAction:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    .line 716
    iput v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLastAction:I

    .line 717
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateHeaders()V

    goto :goto_1

    .line 721
    :pswitch_c
    invoke-direct {p0, v0, v10}, Lch/blinkenlights/android/vanilla/LibraryActivity;->pickSongs(Landroid/content/Intent;I)V

    goto :goto_1

    .line 724
    :pswitch_d
    invoke-direct {p0, v0, v8}, Lch/blinkenlights/android/vanilla/LibraryActivity;->pickSongs(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
    :pswitch_e
    return v10

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_e
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClicked(Landroid/content/Intent;)V
    .locals 6

    .line 465
    iget v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mDefaultAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 467
    iget v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLastAction:I

    :cond_0
    const/16 v1, 0x9

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_3

    const-string v5, "expandable"

    .line 470
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 471
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->onItemExpanded(Landroid/content/Intent;)V

    goto :goto_4

    :cond_3
    const/4 v5, 0x5

    if-eq v0, v5, :cond_8

    if-ne v0, v2, :cond_4

    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    if-ne v0, v1, :cond_5

    const/4 v0, 0x3

    goto :goto_3

    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 480
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mState:I

    and-int/2addr v0, v3

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    .line 482
    :cond_7
    :goto_3
    invoke-direct {p0, p1, v0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->pickSongs(Landroid/content/Intent;I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public onItemExpanded(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "type"

    const/4 v1, -0x1

    .line 493
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 495
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->editPlaylist(Landroid/content/Intent;)V

    goto :goto_0

    .line 497
    :cond_0
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->expand(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x43

    if-eq p1, v1, :cond_2

    const/16 v1, 0x70

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-super {p0, p1, p2}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 p2, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x52

    if-eq p1, p2, :cond_1

    const/16 p2, 0x54

    if-eq p1, p2, :cond_0

    return v1

    .line 338
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->showSearch(Z)Z

    goto/16 :goto_2

    .line 335
    :cond_1
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/BottomBarControls;->openMenu()V

    goto/16 :goto_2

    .line 294
    :cond_2
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getCurrentLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object p1

    .line 296
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {v2}, Lch/blinkenlights/android/vanilla/SlidingView;->isShrinkable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 297
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SlidingView;->hideSlide()V

    goto :goto_2

    .line 301
    :cond_3
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    invoke-virtual {v2, v1}, Lch/blinkenlights/android/vanilla/BottomBarControls;->showSearch(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_9

    .line 307
    iget v2, p1, Lch/blinkenlights/android/vanilla/Limiter;->type:I

    const/4 v3, -0x1

    if-eqz v2, :cond_7

    if-eq v2, v0, :cond_6

    if-eq v2, p2, :cond_7

    const/4 p2, 0x5

    if-eq v2, p2, :cond_7

    const/4 p2, 0x6

    if-eq v2, p2, :cond_7

    const/4 p2, 0x7

    if-eq v2, p2, :cond_5

    goto :goto_0

    .line 320
    :cond_5
    iget-object p1, p1, Lch/blinkenlights/android/vanilla/Limiter;->data:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 321
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->buildLimiter(Ljava/io/File;)Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object p1

    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)I

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    .line 309
    :cond_6
    iget-object p2, p1, Lch/blinkenlights/android/vanilla/Limiter;->data:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lch/blinkenlights/android/vanilla/LibraryActivity;->setLimiter(ILjava/lang/String;)V

    .line 310
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    iget p1, p1, Lch/blinkenlights/android/vanilla/Limiter;->type:I

    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result p1

    goto :goto_1

    .line 316
    :cond_7
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    iget v1, p1, Lch/blinkenlights/android/vanilla/Limiter;->type:I

    invoke-virtual {p2, v1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->clearLimiter(I)V

    .line 317
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    iget p1, p1, Lch/blinkenlights/android/vanilla/Limiter;->type:I

    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getMediaTypePosition(I)I

    move-result p1

    :goto_1
    if-ne p1, v3, :cond_8

    .line 325
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateLimiterViews()V

    goto :goto_2

    .line 327
    :cond_8
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    .line 330
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return v0
.end method

.method public onMediaChange()V
    .locals 1

    .line 937
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->invalidateData()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->checkForLaunch(Landroid/content/Intent;)V

    .line 286
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->loadLimiterIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .line 837
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0x13

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 875
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 839
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    invoke-virtual {p1, v1}, Lch/blinkenlights/android/vanilla/BottomBarControls;->showSearch(Z)Z

    goto/16 :goto_1

    .line 842
    :cond_1
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->openPlaybackActivity()V

    goto :goto_1

    .line 845
    :cond_2
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->buildHomeLimiter(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)I

    .line 846
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateLimiterViews()V

    goto :goto_1

    .line 849
    :cond_3
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    check-cast p1, Lch/blinkenlights/android/vanilla/SortableAdapter;

    .line 850
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lch/blinkenlights/android/vanilla/R$layout;->sort_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 851
    sget v2, Lch/blinkenlights/android/vanilla/R$id;->reverse_sort:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 853
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SortableAdapter;->getSortEntries()[I

    move-result-object v4

    .line 854
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/String;

    .line 855
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x0

    .line 856
    :goto_0
    array-length v8, v4

    if-ge v7, v8, :cond_4

    .line 857
    aget v8, v4, v7

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 860
    :cond_4
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SortableAdapter;->getSortModeIndex()I

    move-result v4

    .line 861
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SortableAdapter;->isSortDescending()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 863
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 864
    sget v2, Lch/blinkenlights/android/vanilla/R$string;->sort_by:I

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 865
    invoke-virtual {p1, v5, v4, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 866
    sget v2, Lch/blinkenlights/android/vanilla/R$string;->done:I

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 868
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 869
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 870
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 871
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return v1
.end method

.method public onPageChanged(ILch/blinkenlights/android/vanilla/LibraryAdapter;)V
    .locals 2

    .line 990
    iput-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    .line 991
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateLimiterViews()V

    if-eqz p2, :cond_1

    .line 992
    invoke-interface {p2}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->getLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->getMediaType()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 997
    :cond_0
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x28

    const/4 v1, 0x0

    .line 998
    invoke-virtual {p2, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 826
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mCurrentAdapter:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    const/16 v1, 0x13

    .line 827
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 829
    invoke-interface {v0}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->getMediaType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    .line 830
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/SlidingView;->isShrinkable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/SlidingView;->isFullyExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 827
    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 831
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 885
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->setFilter(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 894
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->setFilter(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onSongChange(Lch/blinkenlights/android/vanilla/Song;)V
    .locals 2

    .line 953
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->onSongChange(Lch/blinkenlights/android/vanilla/Song;)V

    .line 955
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/BottomBarControls;->setSong(Lch/blinkenlights/android/vanilla/Song;)V

    if-eqz p1, :cond_0

    .line 957
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 958
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->onSongChange(Lch/blinkenlights/android/vanilla/Song;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 211
    invoke-super {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onStart()V

    .line 213
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->loadPreferences()V

    .line 214
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->loadTabOrder()V

    .line 215
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/LibraryActivity;->updateHeaders()V

    return-void
.end method

.method protected onStateChange(II)V
    .locals 0

    .line 944
    invoke-super {p0, p1, p2}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->onStateChange(II)V

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    .line 947
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mBottomBarControls:Lch/blinkenlights/android/vanilla/BottomBarControls;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lch/blinkenlights/android/vanilla/BottomBarControls;->setSong(Lch/blinkenlights/android/vanilla/Song;)V

    :cond_0
    return-void
.end method

.method public openPlaybackActivity()V
    .locals 2

    .line 453
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/SlidingView;->isShrinkable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/SlidingView;->hideSlideDelayed()V

    .line 455
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateLimiterViews()V
    .locals 8

    .line 505
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLimiterViews:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 507
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mPagerAdapter:Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->getCurrentLimiter()Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, v0, Lch/blinkenlights/android/vanilla/Limiter;->names:[Ljava/lang/String;

    .line 511
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    .line 512
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 513
    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 514
    array-length v5, v0

    if-ne v4, v5, :cond_0

    const v5, -0x5f5f60

    goto :goto_1

    :cond_0
    const v5, -0x3f3f40

    .line 515
    :goto_1
    new-instance v6, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    const/4 v5, 0x0

    .line 516
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 518
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 519
    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    .line 520
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 521
    aget-object v7, v0, v3

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, -0x1

    .line 522
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x6

    const/16 v7, 0xe

    .line 525
    invoke-virtual {v5, v7, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 526
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 527
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLimiterViews:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v3, v4

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLimiterScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_2

    .line 533
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/LibraryActivity;->mLimiterScroller:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.class public Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;
.super Landroid/app/Fragment;
.source "PreferencesMediaLibrary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancelButton:Landroid/view/View;

.field private mDropDbCheck:Landroid/widget/CheckBox;

.field private mEditButton:Landroid/view/View;

.field private mForceBastpCheck:Landroid/widget/CheckBox;

.field private mFullScanCheck:Landroid/widget/CheckBox;

.field private mFullScanPending:Z

.field private mGroupAlbumsCheck:Landroid/widget/CheckBox;

.field private mInitialMediaFolders:Ljava/lang/String;

.field private mIsEditingDirectories:Z

.field private mMediaDirectories:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressText:Landroid/widget/TextView;

.field private mStartButton:Landroid/view/View;

.field private mStatsLibraryPlaytime:Landroid/widget/TextView;

.field private mStatsListenPlaytime:Landroid/widget/TextView;

.field private mStatsTracks:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->updateProgress()V

    return-void
.end method

.method static synthetic access$102(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mFullScanPending:Z

    return p1
.end method

.method static synthetic access$200(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;Landroid/widget/CheckBox;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->confirmUpdatePreferences(Landroid/widget/CheckBox;)V

    return-void
.end method

.method static synthetic access$300(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->startMediaFoldersSelection()V

    return-void
.end method

.method private confirmUpdatePreferences(Landroid/widget/CheckBox;)V
    .locals 3

    .line 249
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mFullScanPending:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->updatePreferences(Landroid/widget/CheckBox;)V

    return-void

    .line 256
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lch/blinkenlights/android/vanilla/R$string;->media_scan_preferences_change_title:I

    .line 257
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lch/blinkenlights/android/vanilla/R$string;->media_scan_preferences_change_message:I

    .line 258
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$3;

    invoke-direct {v2, p0, p1}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$3;-><init>(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;Landroid/widget/CheckBox;)V

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$2;

    invoke-direct {v2, p0, p1}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$2;-><init>(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;Landroid/widget/CheckBox;)V

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private editButtonPressed(Landroid/view/View;)V
    .locals 2

    .line 390
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mFullScanPending:Z

    if-eqz p1, :cond_0

    .line 392
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->startMediaFoldersSelection()V

    return-void

    .line 396
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lch/blinkenlights/android/vanilla/R$string;->media_scan_preferences_change_title:I

    .line 397
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lch/blinkenlights/android/vanilla/R$string;->media_scan_preferences_change_message:I

    .line 398
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040013

    new-instance v1, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$5;

    invoke-direct {v1, p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$5;-><init>(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;)V

    .line 399
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v1, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$4;

    invoke-direct {v1, p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$4;-><init>(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;)V

    .line 404
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 407
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private getMediaFoldersDescription()Ljava/lang/String;
    .locals 6

    .line 301
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object v0

    .line 303
    iget-object v1, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->mediaFolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\n"

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2714 "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->blacklistedFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2718 "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private startMediaFoldersSelection()V
    .locals 3

    const/4 v0, 0x1

    .line 414
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mIsEditingDirectories:Z

    .line 415
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lch/blinkenlights/android/vanilla/MediaFoldersSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updatePreferences(Landroid/widget/CheckBox;)V
    .locals 2

    .line 281
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mGroupAlbumsCheck:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_0

    .line 284
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->groupAlbumsByFolder:Z

    .line 285
    :cond_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mForceBastpCheck:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_1

    .line 286
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iput-boolean p1, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->forceBastp:Z

    .line 288
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->setPreferences(Landroid/content/Context;Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;)V

    .line 290
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mGroupAlbumsCheck:Landroid/widget/CheckBox;

    iget-boolean v1, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->groupAlbumsByFolder:Z

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mForceBastpCheck:Landroid/widget/CheckBox;

    iget-boolean v0, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->forceBastp:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mMediaDirectories:Landroid/widget/TextView;

    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->getMediaFoldersDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateProgress()V
    .locals 8

    .line 316
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->describeScanProgress(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;

    move-result-object v1

    .line 319
    iget-boolean v2, v1, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->isRunning:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 320
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mProgressText:Landroid/widget/TextView;

    iget-object v5, v1, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->lastFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mProgressBar:Landroid/widget/ProgressBar;

    iget v5, v1, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->total:I

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 322
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, v1, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->seen:I

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 324
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mStartButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 325
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mEditButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 326
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mDropDbCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 327
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mFullScanCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 328
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mForceBastpCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 329
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mGroupAlbumsCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 331
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mCancelButton:Landroid/view/View;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const/16 v6, 0x8

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mProgressText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/16 v6, 0x8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 335
    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getLibrarySize(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 336
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mStatsTracks:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "duration"

    .line 338
    invoke-virtual {p0, v0, v1}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->calculateSongSum(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4a5bba00    # 3600000.0f

    div-float/2addr v1, v2

    .line 339
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mStatsLibraryPlaytime:Landroid/widget/TextView;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v5

    const-string v1, "%.1f"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "playcount*duration"

    .line 341
    invoke-virtual {p0, v0, v4}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->calculateSongSum(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v0, v6

    div-float/2addr v0, v2

    .line 342
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mStatsListenPlaytime:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public calculateSongSum(Landroid/content/Context;Ljava/lang/String;)J
    .locals 7

    const/4 v0, 0x1

    .line 354
    new-array v3, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUM("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const-string v2, "songs"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    .line 356
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 357
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide v1, v0

    .line 359
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v1
.end method

.method public cancelButtonPressed(Landroid/view/View;)V
    .locals 0

    .line 380
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->abortLibraryScan(Landroid/content/Context;)V

    .line 381
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->updateProgress()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 201
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->start_button:I

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->startButtonPressed(Landroid/view/View;)V

    goto :goto_0

    .line 203
    :cond_0
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->cancel_button:I

    if-ne v0, v1, :cond_1

    .line 204
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->cancelButtonPressed(Landroid/view/View;)V

    goto :goto_0

    .line 205
    :cond_1
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->edit_button:I

    if-ne v0, v1, :cond_2

    .line 206
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->editButtonPressed(Landroid/view/View;)V

    goto :goto_0

    .line 207
    :cond_2
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->media_scan_group_albums:I

    if-eq v0, v1, :cond_3

    sget v1, Lch/blinkenlights/android/vanilla/R$id;->media_scan_force_bastp:I

    if-ne v0, v1, :cond_4

    .line 208
    :cond_3
    check-cast p1, Landroid/widget/CheckBox;

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->confirmUpdatePreferences(Landroid/widget/CheckBox;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 216
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 217
    sget p2, Lch/blinkenlights/android/vanilla/R$string;->dump_database:I

    const/16 v0, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 218
    sget p2, Lch/blinkenlights/android/vanilla/R$string;->force_m3u_import:I

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 118
    sget p3, Lch/blinkenlights/android/vanilla/R$layout;->medialibrary_preferences:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 238
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 235
    :cond_0
    sget-object p1, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    const-wide/16 v3, -0x2

    invoke-static {p1, v3, v4, v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/dbdump-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".sqlite"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    sget v3, Lch/blinkenlights/android/vanilla/R$string;->dump_database_result:I

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {p1, v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->createDebugDump(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v2
.end method

.method public onPause()V
    .locals 3

    .line 184
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 185
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 187
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mTimer:Ljava/util/Timer;

    .line 191
    :cond_0
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mFullScanPending:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mIsEditingDirectories:Z

    if-nez v0, :cond_1

    .line 192
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2, v2}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->startLibraryScan(Landroid/content/Context;ZZ)V

    .line 193
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mInitialMediaFolders:Ljava/lang/String;

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mFullScanPending:Z

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 152
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mTimer:Ljava/util/Timer;

    .line 155
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mTimer:Ljava/util/Timer;

    new-instance v2, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;

    invoke-direct {v2, p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;-><init>(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xc8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 167
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mInitialMediaFolders:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->getMediaFoldersDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mInitialMediaFolders:Ljava/lang/String;

    .line 171
    :cond_0
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mIsEditingDirectories:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mIsEditingDirectories:Z

    .line 175
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mInitialMediaFolders:Ljava/lang/String;

    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->getMediaFoldersDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mFullScanPending:Z

    :cond_1
    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->updatePreferences(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 123
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->start_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mStartButton:Landroid/view/View;

    .line 126
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mCancelButton:Landroid/view/View;

    .line 127
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->edit_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mEditButton:Landroid/view/View;

    .line 128
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->media_stats_progress_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mProgressText:Landroid/widget/TextView;

    .line 129
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->media_stats_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mProgressBar:Landroid/widget/ProgressBar;

    .line 130
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->media_stats_tracks:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mStatsTracks:Landroid/widget/TextView;

    .line 131
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->media_stats_library_playtime:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mStatsLibraryPlaytime:Landroid/widget/TextView;

    .line 132
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->media_stats_listen_playtime:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mStatsListenPlaytime:Landroid/widget/TextView;

    .line 133
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->media_directories:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mMediaDirectories:Landroid/widget/TextView;

    .line 134
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->media_scan_full:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mFullScanCheck:Landroid/widget/CheckBox;

    .line 135
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->media_scan_drop_db:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mDropDbCheck:Landroid/widget/CheckBox;

    .line 136
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->media_scan_group_albums:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mGroupAlbumsCheck:Landroid/widget/CheckBox;

    .line 137
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->media_scan_force_bastp:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mForceBastpCheck:Landroid/widget/CheckBox;

    .line 140
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mStartButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mCancelButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mEditButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mGroupAlbumsCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mForceBastpCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public startButtonPressed(Landroid/view/View;)V
    .locals 2

    .line 370
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mFullScanCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->mDropDbCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->startLibraryScan(Landroid/content/Context;ZZ)V

    .line 371
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->updateProgress()V

    return-void
.end method

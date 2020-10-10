.class public Lch/blinkenlights/android/vanilla/FileSystemAdapter;
.super Lch/blinkenlights/android/vanilla/SortableAdapter;
.source "FileSystemAdapter.java"

# interfaces
.implements Lch/blinkenlights/android/vanilla/LibraryAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/FileSystemAdapter$Observer;
    }
.end annotation


# static fields
.field private static final FILE_SEPARATOR:Ljava/util/regex/Pattern;

.field private static final GUESS_IMAGE:Ljava/util/regex/Pattern;

.field private static final GUESS_MUSIC:Ljava/util/regex/Pattern;

.field private static final SORT_RES_IDS:[I

.field private static final SPACE_SPLIT:Ljava/util/regex/Pattern;


# instance fields
.field final mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

.field private final mFileComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileFilter:Ljava/io/FilenameFilter;

.field private mFileObserver:Lch/blinkenlights/android/vanilla/FileSystemAdapter$Observer;

.field private mFiles:[Ljava/io/File;

.field mFilter:[Ljava/lang/String;

.field private final mFsRoot:Ljava/io/File;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLimiter:Lch/blinkenlights/android/vanilla/Limiter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\\s+"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->SPACE_SPLIT:Ljava/util/regex/Pattern;

    .line 50
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->FILE_SEPARATOR:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    const-string v1, "^(.+\\.(mp3|ogg|mka|opus|flac|aac|m4a|wav))$"

    .line 51
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->GUESS_MUSIC:Ljava/util/regex/Pattern;

    const-string v1, "^(.+\\.(gif|jpe?g|png|bmp|tiff?))$"

    .line 52
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->GUESS_IMAGE:Ljava/util/regex/Pattern;

    const/4 v1, 0x4

    .line 77
    new-array v1, v1, [I

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->filename:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->file_size:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->file_time:I

    aput v2, v1, v0

    sget v0, Lch/blinkenlights/android/vanilla/R$string;->extension:I

    const/4 v2, 0x3

    aput v0, v1, v2

    sput-object v1, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->SORT_RES_IDS:[I

    return-void
.end method

.method public constructor <init>(Lch/blinkenlights/android/vanilla/LibraryActivity;Lch/blinkenlights/android/vanilla/Limiter;)V
    .locals 2

    .line 174
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SortableAdapter;-><init>()V

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFsRoot:Ljava/io/File;

    .line 106
    new-instance v0, Lch/blinkenlights/android/vanilla/FileSystemAdapter$1;

    invoke-direct {v0, p0}, Lch/blinkenlights/android/vanilla/FileSystemAdapter$1;-><init>(Lch/blinkenlights/android/vanilla/FileSystemAdapter;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFileFilter:Ljava/io/FilenameFilter;

    .line 125
    new-instance v0, Lch/blinkenlights/android/vanilla/FileSystemAdapter$2;

    invoke-direct {v0, p0}, Lch/blinkenlights/android/vanilla/FileSystemAdapter$2;-><init>(Lch/blinkenlights/android/vanilla/FileSystemAdapter;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFileComparator:Ljava/util/Comparator;

    .line 175
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    .line 176
    iput-object p2, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    const-string v0, "layout_inflater"

    .line 177
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 179
    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->buildHomeLimiter(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object p2

    .line 181
    :cond_0
    invoke-virtual {p0, p2}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V

    .line 182
    sget-object p1, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->SORT_RES_IDS:[I

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortEntries:[I

    return-void
.end method

.method public static buildHomeLimiter(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/Limiter;
    .locals 0

    .line 357
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/FileUtils;->getFilesystemBrowseStart(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->buildLimiter(Ljava/io/File;)Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object p0

    return-object p0
.end method

.method public static buildLimiter(Ljava/io/File;)Lch/blinkenlights/android/vanilla/Limiter;
    .locals 3

    .line 344
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->pointsToParentFolder(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 346
    :cond_0
    sget-object v0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->FILE_SEPARATOR:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v1, Lch/blinkenlights/android/vanilla/Limiter;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0, p0}, Lch/blinkenlights/android/vanilla/Limiter;-><init>(I[Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method private getImageResourceForFile(Ljava/io/File;)I
    .locals 3

    .line 303
    sget v0, Lch/blinkenlights/android/vanilla/R$drawable;->file_document:I

    .line 304
    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->pointsToParentFolder(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    sget v0, Lch/blinkenlights/android/vanilla/R$drawable;->arrow_up:I

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    sget v0, Lch/blinkenlights/android/vanilla/R$drawable;->folder:I

    goto :goto_0

    .line 308
    :cond_1
    sget-object v1, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->GUESS_MUSIC:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    sget v0, Lch/blinkenlights/android/vanilla/R$drawable;->file_music:I

    goto :goto_0

    .line 310
    :cond_2
    sget-object v1, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->GUESS_IMAGE:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 311
    sget v0, Lch/blinkenlights/android/vanilla/R$drawable;->file_image:I

    :cond_3
    :goto_0
    return v0
.end method

.method private getLimiterPath()Ljava/io/File;
    .locals 2

    .line 322
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lch/blinkenlights/android/vanilla/Limiter;->data:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method private static pointsToParentFolder(Ljava/io/File;)Z
    .locals 1

    .line 332
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public buildLimiter(J)Lch/blinkenlights/android/vanilla/Limiter;
    .locals 4

    const/4 v0, 0x0

    .line 362
    :goto_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFiles:[Ljava/io/File;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 363
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->getItemId(I)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 364
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFiles:[Ljava/io/File;

    aget-object p1, p1, v0

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->buildLimiter(Ljava/io/File;)Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public buildSongQuery([Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;
    .locals 2

    .line 428
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->getLimiterPath()Ljava/io/File;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildFileQuery(Ljava/lang/String;[Ljava/lang/String;Z)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFiles:[Ljava/io/File;

    .line 217
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public commitQuery(Ljava/lang/Object;)V
    .locals 0

    .line 209
    check-cast p1, [Ljava/io/File;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFiles:[Ljava/io/File;

    .line 210
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public createData(Landroid/view/View;)Landroid/content/Intent;
    .locals 5

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/ViewHolder;

    .line 398
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFiles:[Ljava/io/File;

    iget-wide v1, p1, Lch/blinkenlights/android/vanilla/ViewHolder;->id:J

    long-to-int v2, v1

    aget-object v0, v0, v2

    .line 400
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "type"

    const/4 v3, 0x7

    .line 401
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    iget-wide v2, p1, Lch/blinkenlights/android/vanilla/ViewHolder;->id:J

    long-to-int v3, v2

    invoke-virtual {p0, v3}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->getItemId(I)J

    move-result-wide v2

    const-string v4, "id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 403
    iget-object p1, p1, Lch/blinkenlights/android/vanilla/ViewHolder;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const-string v2, "expandable"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method public getCount()I
    .locals 1

    .line 223
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFiles:[Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 225
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getDefaultSortMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 231
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFiles:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 237
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFiles:[Ljava/io/File;

    aget-object p1, v0, p1

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FileUtils;->songIdFromFile(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLimiter()Lch/blinkenlights/android/vanilla/Limiter;
    .locals 1

    .line 292
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getSortSettingsKey()Ljava/lang/String;
    .locals 1

    const-string v0, "sort_filesystem"

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 247
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lch/blinkenlights/android/vanilla/DraggableRow;

    const/4 p3, 0x3

    .line 248
    invoke-virtual {p2, p3}, Lch/blinkenlights/android/vanilla/DraggableRow;->setupLayout(I)V

    .line 250
    new-instance p3, Lch/blinkenlights/android/vanilla/ViewHolder;

    invoke-direct {p3}, Lch/blinkenlights/android/vanilla/ViewHolder;-><init>()V

    .line 251
    invoke-virtual {p2, p3}, Lch/blinkenlights/android/vanilla/DraggableRow;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_0
    check-cast p2, Lch/blinkenlights/android/vanilla/DraggableRow;

    .line 254
    invoke-virtual {p2}, Lch/blinkenlights/android/vanilla/DraggableRow;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lch/blinkenlights/android/vanilla/ViewHolder;

    .line 257
    :goto_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFiles:[Ljava/io/File;

    aget-object v0, v0, p1

    .line 258
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    .line 260
    iput-wide v2, p3, Lch/blinkenlights/android/vanilla/ViewHolder;->id:J

    .line 261
    iput-object v1, p3, Lch/blinkenlights/android/vanilla/ViewHolder;->title:Ljava/lang/String;

    .line 262
    invoke-virtual {p2, v1}, Lch/blinkenlights/android/vanilla/DraggableRow;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {p2}, Lch/blinkenlights/android/vanilla/DraggableRow;->getCoverView()Lch/blinkenlights/android/vanilla/LazyCoverView;

    move-result-object p1

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->getImageResourceForFile(Ljava/io/File;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method

.method public onCreateFancyMenu(Landroid/content/Intent;Landroid/view/View;FF)Z
    .locals 3

    const-string v0, "file"

    .line 461
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 462
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->pointsToParentFolder(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 465
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lch/blinkenlights/android/vanilla/LibraryActivity;->onCreateFancyMenu(Landroid/content/Intent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public onItemClicked(Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "expandable"

    .line 438
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "id"

    const-wide/16 v3, -0x2

    .line 439
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 442
    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FileUtils;->canDispatchIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-static {v0, p1}, Lch/blinkenlights/android/vanilla/FileUtils;->dispatchIntent(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    .line 446
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->onItemExpanded(Landroid/content/Intent;)V

    goto :goto_0

    .line 448
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->onItemClicked(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public query()Ljava/lang/Object;
    .locals 5

    .line 188
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->getLimiterPath()Ljava/io/File;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFileObserver:Lch/blinkenlights/android/vanilla/FileSystemAdapter$Observer;

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Lch/blinkenlights/android/vanilla/FileSystemAdapter$Observer;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lch/blinkenlights/android/vanilla/FileSystemAdapter$Observer;-><init>(Lch/blinkenlights/android/vanilla/FileSystemAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFileObserver:Lch/blinkenlights/android/vanilla/FileSystemAdapter$Observer;

    .line 194
    :cond_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 196
    new-array v1, v2, [Ljava/io/File;

    .line 198
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFileComparator:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFsRoot:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    new-instance v1, Ljava/io/File;

    const-string v4, ".."

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 203
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFilter:[Ljava/lang/String;

    goto :goto_0

    .line 273
    :cond_0
    sget-object v0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->SPACE_SPLIT:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFilter:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V
    .locals 3

    .line 279
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFileObserver:Lch/blinkenlights/android/vanilla/FileSystemAdapter$Observer;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    :cond_0
    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFileObserver:Lch/blinkenlights/android/vanilla/FileSystemAdapter$Observer;

    if-eqz p1, :cond_1

    .line 283
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFsRoot:Ljava/io/File;

    iget-object v2, p1, Lch/blinkenlights/android/vanilla/Limiter;->data:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 286
    :cond_1
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    return-void
.end method

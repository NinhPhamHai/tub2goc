.class public Lch/blinkenlights/android/vanilla/PlaylistAdapter;
.super Landroid/widget/CursorAdapter;
.source "PlaylistAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEditable:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mPlaylistId:J

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "_id"

    const-string v1, "song_id"

    const-string v2, "title"

    const-string v3, "album"

    const-string v4, "artist"

    const-string v5, "album_id"

    const-string v6, "duration"

    .line 44
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 73
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mUiHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mWorkerHandler:Landroid/os/Handler;

    const-string p2, "layout_inflater"

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private runQuery()Landroid/database/Cursor;
    .locals 3

    .line 171
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mPlaylistId:J

    sget-object v2, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildPlaylistQuery(J[Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/QueryTask;->runQuery(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .line 108
    check-cast p1, Lch/blinkenlights/android/vanilla/DraggableRow;

    const/4 p2, 0x2

    .line 109
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 110
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 111
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v3, Lch/blinkenlights/android/vanilla/ViewHolder;

    invoke-direct {v3}, Lch/blinkenlights/android/vanilla/ViewHolder;-><init>()V

    .line 114
    iput-object v0, v3, Lch/blinkenlights/android/vanilla/ViewHolder;->title:Ljava/lang/String;

    const/4 v4, 0x1

    .line 115
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lch/blinkenlights/android/vanilla/ViewHolder;->id:J

    .line 117
    invoke-virtual {p1, p2}, Lch/blinkenlights/android/vanilla/DraggableRow;->setupLayout(I)V

    .line 118
    iget-boolean p2, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mEditable:Z

    invoke-virtual {p1, p2}, Lch/blinkenlights/android/vanilla/DraggableRow;->showDragger(Z)V

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lch/blinkenlights/android/vanilla/DraggableRow;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p1, v3}, Lch/blinkenlights/android/vanilla/DraggableRow;->setTag(Ljava/lang/Object;)V

    const/4 p2, 0x6

    .line 121
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lch/blinkenlights/android/vanilla/DraggableRow;->setDuration(J)V

    .line 123
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/DraggableRow;->getCoverView()Lch/blinkenlights/android/vanilla/LazyCoverView;

    move-result-object p1

    const/4 p2, 0x5

    .line 124
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    const/4 v0, 0x0

    invoke-virtual {p1, v4, p2, p3, v0}, Lch/blinkenlights/android/vanilla/LazyCoverView;->setCover(IJLjava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 155
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->runQuery()Landroid/database/Cursor;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return v2
.end method

.method public moveItem(II)V
    .locals 3

    if-ne p1, p2, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p0, p2}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide p1

    invoke-static {v0, v1, v2, p1, p2}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->movePlaylistItem(Landroid/content/Context;JJ)V

    .line 192
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->runQuery()Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 133
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget p2, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public removeItem(I)V
    .locals 4

    .line 196
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mEditable:Z

    .line 99
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public setPlaylistId(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mPlaylistId:J

    .line 87
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistAdapter;->mWorkerHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

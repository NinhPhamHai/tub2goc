.class public Lch/blinkenlights/android/vanilla/ShowQueueAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShowQueueAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHighlightRow:I

.field private mResource:I

.field private mService:Lch/blinkenlights/android/vanilla/PlaybackService;

.field private mSongCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    iput p2, p0, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->mResource:I

    .line 52
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->mHighlightRow:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 82
    iget v0, p0, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->mSongCount:I

    return v0
.end method

.method public getItem(I)Lch/blinkenlights/android/vanilla/Song;
    .locals 2

    .line 93
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->mService:Lch/blinkenlights/android/vanilla/PlaybackService;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSongByQueuePosition(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Lch/blinkenlights/android/vanilla/Song;

    const-wide/16 v0, -0x1

    invoke-direct {p1, v0, v1}, Lch/blinkenlights/android/vanilla/Song;-><init>(J)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->getItem(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 105
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->getItem(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    iget-wide v0, p1, Lch/blinkenlights/android/vanilla/Song;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 124
    check-cast p2, Lch/blinkenlights/android/vanilla/DraggableRow;

    goto :goto_0

    .line 126
    :cond_0
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 127
    iget v1, p0, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->mResource:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lch/blinkenlights/android/vanilla/DraggableRow;

    const/4 p3, 0x2

    .line 128
    invoke-virtual {p2, p3}, Lch/blinkenlights/android/vanilla/DraggableRow;->setupLayout(I)V

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->getItem(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p3

    .line 133
    invoke-virtual {p3}, Lch/blinkenlights/android/vanilla/Song;->isFilled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p3, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lch/blinkenlights/android/vanilla/DraggableRow;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 135
    iget-wide v3, p3, Lch/blinkenlights/android/vanilla/Song;->duration:J

    invoke-virtual {p2, v3, v4}, Lch/blinkenlights/android/vanilla/DraggableRow;->setDuration(J)V

    .line 136
    invoke-virtual {p2}, Lch/blinkenlights/android/vanilla/DraggableRow;->getCoverView()Lch/blinkenlights/android/vanilla/LazyCoverView;

    move-result-object v1

    iget-wide v3, p3, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    const/4 p3, 0x0

    invoke-virtual {v1, v2, v3, v4, p3}, Lch/blinkenlights/android/vanilla/LazyCoverView;->setCover(IJLjava/lang/String;)V

    .line 139
    :cond_1
    iget p3, p0, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->mHighlightRow:I

    if-ne p1, p3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p2, v0}, Lch/blinkenlights/android/vanilla/DraggableRow;->highlightRow(Z)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setData(Lch/blinkenlights/android/vanilla/PlaybackService;I)V
    .locals 0

    .line 63
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->mService:Lch/blinkenlights/android/vanilla/PlaybackService;

    .line 64
    iput p2, p0, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->mHighlightRow:I

    .line 65
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->getTimelineLength()I

    move-result p1

    iput p1, p0, Lch/blinkenlights/android/vanilla/ShowQueueAdapter;->mSongCount:I

    .line 66
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

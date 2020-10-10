.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "StreamItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/extractor/stream/Stream;",
        "U:",
        "Lorg/schabi/newpipe/extractor/stream/Stream;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final secondaryStreams:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private final streamsWrapper:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;-><init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "TT;>;",
            "Landroid/util/SparseArray<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper<",
            "TU;>;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->streamsWrapper:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    .line 44
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->secondaryStreams:Landroid/util/SparseArray;

    return-void
.end method

.method private getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 90
    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c010f

    move-object/from16 v5, p3

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const v4, 0x7f0902e5

    .line 93
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f09026d

    .line 94
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09026e

    .line 95
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f09026f

    .line 96
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 98
    invoke-virtual/range {p0 .. p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v8

    .line 103
    instance-of v9, v8, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    const/16 v10, 0x8

    if-eqz v9, :cond_2

    .line 104
    move-object v9, v8

    check-cast v9, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 105
    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v11

    .line 107
    iget-object v12, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->secondaryStreams:Landroid/util/SparseArray;

    const/4 v13, 0x4

    if-eqz v12, :cond_6

    .line 108
    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 109
    iget-object v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->secondaryStreams:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7

    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_1
    if-eqz p4, :cond_6

    goto :goto_3

    .line 114
    :cond_2
    instance-of v9, v8, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v9, :cond_4

    .line 115
    move-object v9, v8

    check-cast v9, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 116
    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v11

    if-lez v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "kbps"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v9

    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/MediaFormat;->getName()Ljava/lang/String;

    move-result-object v9

    :goto_1
    move-object v11, v9

    goto :goto_2

    .line 119
    :cond_4
    instance-of v9, v8, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    if-eqz v9, :cond_5

    .line 120
    move-object v9, v8

    check-cast v9, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getDisplayLanguageName()Ljava/lang/String;

    move-result-object v11

    .line 121
    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 122
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->context:Landroid/content/Context;

    const v12, 0x7f110068

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 125
    :cond_5
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v9

    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v11

    :cond_6
    :goto_2
    const/16 v13, 0x8

    .line 128
    :cond_7
    :goto_3
    iget-object v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->streamsWrapper:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v9, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(I)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-lez v9, :cond_a

    .line 129
    iget-object v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->secondaryStreams:Landroid/util/SparseArray;

    if-nez v9, :cond_8

    const/4 v9, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;

    :goto_4
    if-eqz v9, :cond_9

    .line 131
    invoke-virtual {v9}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->getSizeInBytes()J

    move-result-wide v9

    iget-object v12, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->streamsWrapper:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v12, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(I)J

    move-result-wide v14

    add-long/2addr v9, v14

    .line 132
    invoke-static {v9, v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 134
    :cond_9
    iget-object v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->streamsWrapper:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v9, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getFormattedSize(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_5
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 138
    :cond_a
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_6
    instance-of v1, v8, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    if-eqz v1, :cond_b

    .line 142
    check-cast v8, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 144
    :cond_b
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_7
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v3
.end method


# virtual methods
.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->streamsWrapper:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllSecondary()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper<",
            "TU;>;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->secondaryStreams:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->streamsWrapper:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->streamsWrapper:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 85
    move-object p1, p3

    check-cast p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

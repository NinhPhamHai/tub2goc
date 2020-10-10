.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "DownloadDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field askForSavePath:Z

.field private audioStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field protected currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .annotation build Licepick/State;
    .end annotation
.end field

.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field downloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

.field mainStorageAudio:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

.field mainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

.field private nameEditText:Landroid/widget/EditText;

.field okButton:Landroidx/appcompat/view/menu/ActionMenuItemView;

.field private prefs:Landroid/content/SharedPreferences;

.field private radioStreamsGroup:Landroid/widget/RadioGroup;

.field protected selectedAudioIndex:I
    .annotation build Licepick/State;
    .end annotation
.end field

.field protected selectedSubtitleIndex:I
    .annotation build Licepick/State;
    .end annotation
.end field

.field protected selectedVideoIndex:I
    .annotation build Licepick/State;
    .end annotation
.end field

.field private streamsSpinner:Landroid/widget/Spinner;

.field private subtitleStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private threadsCountTextView:Landroid/widget/TextView;

.field private threadsSeekBar:Landroid/widget/SeekBar;

.field private videoStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation
.end field

.field protected wrappedAudioStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation

    .annotation build Licepick/State;
    .end annotation
.end field

.field protected wrappedSubtitleStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;"
        }
    .end annotation

    .annotation build Licepick/State;
    .end annotation
.end field

.field protected wrappedVideoStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation

    .annotation build Licepick/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 83
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->empty()Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedAudioStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    .line 85
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->empty()Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedVideoStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    .line 87
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->empty()Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedSubtitleStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedVideoIndex:I

    .line 90
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedAudioIndex:I

    .line 92
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 99
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->mainStorageAudio:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    .line 542
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->mainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    .line 543
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->downloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    .line 544
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->okButton:Landroidx/appcompat/view/menu/ActionMenuItemView;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;)Landroid/content/SharedPreferences;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->threadsCountTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkSelectedDownload(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v9, p0

    move-object v0, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 633
    :try_start_0
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    iget-object v3, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    const-string v4, ""

    invoke-direct {v2, v3, v1, v5, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    move-object v4, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    if-nez v5, :cond_1

    .line 637
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v7, v8, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_1
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    iget-object v3, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :goto_1
    iget-object v2, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->downloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {v2, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->checkForExistingMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;

    move-result-object v3

    .line 652
    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$3;->$SwitchMap$com$floatingtunes$youtubeplayer$topmusic$download$giga$service$MissionState:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    const/4 v6, 0x2

    const/4 v10, 0x1

    const v11, 0x7f110231

    if-eq v2, v10, :cond_a

    if-eq v2, v6, :cond_9

    const/4 v12, 0x3

    if-eq v2, v12, :cond_8

    const/4 v12, 0x4

    if-eq v2, v12, :cond_2

    return-void

    :cond_2
    if-nez v0, :cond_3

    .line 670
    invoke-direct {p0, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->continueSelectedDownload(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)V

    .line 671
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :cond_3
    if-nez v5, :cond_7

    .line 678
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_4

    const v0, 0x7f110129

    .line 679
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    .line 683
    :cond_4
    invoke-virtual {p1, v7, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 684
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->canWrite()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 689
    :cond_5
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->continueSelectedDownload(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)V

    return-void

    :cond_6
    :goto_2
    const v0, 0x7f110122

    .line 685
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    :cond_7
    const v2, 0x7f110234

    goto :goto_3

    :cond_8
    const v11, 0x7f11016c

    const v2, 0x7f1100ec

    goto :goto_3

    :cond_9
    const v2, 0x7f1100eb

    goto :goto_3

    :cond_a
    const v2, 0x7f110233

    .line 700
    :goto_3
    new-instance v12, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v13, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f1100ed

    .line 701
    invoke-virtual {v12, v13}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 702
    invoke-virtual {v12, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    .line 703
    invoke-virtual {v12, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-nez v0, :cond_c

    .line 711
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$3;->$SwitchMap$com$floatingtunes$youtubeplayer$topmusic$download$giga$service$MissionState:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v10, :cond_b

    if-eq v0, v6, :cond_b

    goto :goto_4

    .line 714
    :cond_b
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;

    invoke-direct {v0, p0, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$ZQ3RVhuT75EAomfJdEihMZFxtcg;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)V

    invoke-virtual {v12, v11, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 722
    :goto_4
    invoke-virtual {v12}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 726
    :cond_c
    new-instance v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;

    move-object v1, v10

    move-object v2, p0

    move-object/from16 v5, p2

    move-object v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$DsrS58qmqs4GoFMOqonUMje4w8U;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;Landroid/net/Uri;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 762
    invoke-virtual {v12}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 643
    :goto_5
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->showErrorActivity(Ljava/lang/Exception;)V

    return-void
.end method

.method private continueSelectedDownload(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)V
    .locals 20

    move-object/from16 v1, p0

    .line 767
    invoke-virtual/range {p1 .. p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f110240

    .line 768
    invoke-direct {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    .line 774
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->truncate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :cond_1
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->threadsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 791
    iget-object v3, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v6, 0x7f090031

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eq v3, v6, :cond_8

    const v6, 0x7f090273

    if-eq v3, v6, :cond_6

    const v6, 0x7f0902d7

    if-eq v3, v6, :cond_2

    return-void

    :cond_2
    const/16 v3, 0x76

    .line 803
    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->videoStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    iget v10, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v6, v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v6

    .line 805
    iget-object v10, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->videoStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    .line 806
    invoke-virtual {v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getAllSecondary()Landroid/util/SparseArray;

    move-result-object v10

    iget-object v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedVideoStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    .line 807
    invoke-virtual {v11}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;

    if-eqz v10, :cond_5

    .line 810
    invoke-virtual {v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->getStream()Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v11

    check-cast v11, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-virtual {v11}, Lorg/schabi/newpipe/extractor/stream/Stream;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 812
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v12

    sget-object v13, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne v12, v13, :cond_3

    const-string v12, "mp4D-mp4"

    goto :goto_0

    :cond_3
    const-string v12, "webm"

    .line 818
    :goto_0
    iget-object v13, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedVideoStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    move-object v14, v6

    check-cast v14, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v13, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(Lorg/schabi/newpipe/extractor/stream/Stream;)J

    move-result-wide v13

    .line 822
    invoke-virtual {v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->getSizeInBytes()J

    move-result-wide v15

    cmp-long v17, v15, v4

    if-lez v17, :cond_4

    cmp-long v15, v13, v4

    if-lez v15, :cond_4

    .line 823
    invoke-virtual {v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->getSizeInBytes()J

    move-result-wide v4

    add-long/2addr v4, v13

    :cond_4
    move v14, v0

    move-wide/from16 v18, v4

    move-object/from16 v17, v9

    move-object v9, v11

    move-object/from16 v16, v12

    goto :goto_1

    :cond_5
    move v14, v0

    move-wide/from16 v18, v4

    move-object/from16 v16, v9

    move-object/from16 v17, v16

    :goto_1
    const/16 v13, 0x76

    goto :goto_4

    :cond_6
    const/16 v3, 0x73

    .line 829
    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    iget v10, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v6, v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v6

    .line 831
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v10

    sget-object v11, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne v10, v11, :cond_7

    const/4 v10, 0x3

    .line 833
    new-array v10, v10, [Ljava/lang/String;

    .line 834
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v11

    invoke-virtual {v11}, Lorg/schabi/newpipe/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    const-string v11, "false"

    aput-object v11, v10, v2

    aput-object v11, v10, v7

    const-string v11, "ttml"

    move v14, v0

    move-wide/from16 v18, v4

    move-object/from16 v17, v10

    move-object/from16 v16, v11

    goto :goto_2

    :cond_7
    move v14, v0

    move-wide/from16 v18, v4

    move-object/from16 v16, v9

    move-object/from16 v17, v16

    :goto_2
    const/16 v13, 0x73

    goto :goto_4

    :cond_8
    const/16 v3, 0x61

    .line 795
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->audioStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    iget v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedAudioIndex:I

    invoke-virtual {v0, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v6

    .line 797
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    sget-object v10, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne v0, v10, :cond_9

    const-string v0, "mp4D-m4a"

    move-object/from16 v16, v0

    move-wide/from16 v18, v4

    move-object/from16 v17, v9

    goto :goto_3

    :cond_9
    move-wide/from16 v18, v4

    move-object/from16 v16, v9

    move-object/from16 v17, v16

    :goto_3
    const/16 v13, 0x61

    const/4 v14, 0x1

    :goto_4
    if-nez v9, :cond_a

    .line 845
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/stream/Stream;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    goto :goto_5

    .line 847
    :cond_a
    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/stream/Stream;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    aput-object v9, v0, v2

    :goto_5
    move-object v11, v0

    .line 850
    iget-object v10, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v12, p1

    invoke-static/range {v10 .. v19}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->startMission(Landroid/content/Context;[Ljava/lang/String;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;CILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 852
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to overwrite the file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadDialog"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f110232

    .line 777
    invoke-direct {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->showFailedDialog(I)V

    return-void
.end method

.method private fetchStreamsSize()V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 318
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedVideoStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->fetchSizeForWrapper(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$c1GT7EadXuQqe9RnFlPWWwrPXV0;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$c1GT7EadXuQqe9RnFlPWWwrPXV0;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 323
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedAudioStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->fetchSizeForWrapper(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$tgR0brxFp7VH6t7SrhYdn4nT1yo;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$tgR0brxFp7VH6t7SrhYdn4nT1yo;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 328
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedSubtitleStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->fetchSizeForWrapper(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$MYglqCr7hkCE75XJZAwlcMD1dlk;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$MYglqCr7hkCE75XJZAwlcMD1dlk;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private getNameEditText()Ljava/lang/String;
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilenameUtils;->createFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubtitleIndexBy(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;)I"
        }
    .end annotation

    .line 510
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/utils/Localization;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 512
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "-"

    if-ge v2, v3, :cond_1

    .line 513
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 514
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Localization;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Localization;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 524
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Localization;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Localization;->getLanguage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x2

    if-ge v3, v4, :cond_6

    const/4 v4, 0x0

    .line 527
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 528
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 530
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-gtz v3, :cond_3

    .line 531
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Localization;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    return v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return v1
.end method

.method private initToolbar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 2

    const v0, 0x7f1100ed

    .line 375
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    const v0, 0x7f0801f1

    .line 376
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    const v0, 0x7f0d0001

    .line 377
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 378
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$O2157NG0DxYJR0AXlWZ8sE7Yqr0;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$O2157NG0DxYJR0AXlWZ8sE7Yqr0;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901bb

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->okButton:Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 381
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->okButton:Landroidx/appcompat/view/menu/ActionMenuItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 383
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$mTgIihy6HqFmP0s5KwgDAEyvFm8;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$DownloadDialog$mTgIihy6HqFmP0s5KwgDAEyvFm8;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method public static newInstance(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;
    .locals 1

    .line 110
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;-><init>()V

    .line 111
    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setInfo(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-object v0
.end method

.method private prepareSelectedDownload()V
    .locals 5

    .line 583
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->getNameEditText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f090031

    if-eq v1, v2, :cond_3

    const v2, 0x7f090273

    if-eq v1, v2, :cond_1

    const v2, 0x7f0902d7

    if-ne v1, v2, :cond_0

    .line 593
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->mainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    .line 594
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->videoStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    .line 595
    iget-object v3, v2, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No stream selected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->mainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    .line 600
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    .line 601
    iget-object v3, v2, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne v2, v0, :cond_2

    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 587
    :cond_3
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->mainStorageAudio:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    .line 588
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->audioStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedAudioIndex:I

    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    .line 589
    iget-object v3, v2, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_5

    .line 609
    iget-boolean v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->askForSavePath:Z

    if-eqz v2, :cond_4

    goto :goto_2

    .line 623
    :cond_4
    invoke-virtual {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->findFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->checkSelectedDownload(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    const/16 v1, 0x1230

    .line 617
    invoke-static {p0, v1, v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->requestSafWithFileCreation(Landroidx/fragment/app/Fragment;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setInfo(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    return-void
.end method

.method private setRadioButtonsState(Z)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 505
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0902d7

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 506
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f090273

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setupAudioSpinner()V
    .locals 2

    .line 396
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->streamsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->audioStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 399
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->streamsSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedAudioIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v0, 0x1

    .line 400
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setRadioButtonsState(Z)V

    return-void
.end method

.method private setupSubtitleSpinner()V
    .locals 2

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->streamsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 415
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->streamsSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v0, 0x1

    .line 416
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setRadioButtonsState(Z)V

    return-void
.end method

.method private setupVideoSpinner()V
    .locals 2

    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->streamsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->videoStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 407
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->streamsSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v0, 0x1

    .line 408
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setRadioButtonsState(Z)V

    return-void
.end method

.method private showErrorActivity(Ljava/lang/Exception;)V
    .locals 0

    const-string p1, "Error happens"

    .line 572
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/ToastUtil;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method private showFailedDialog(I)V
    .locals 2

    .line 555
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11016b

    .line 556
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 557
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a

    const/4 v1, 0x0

    .line 558
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 559
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 560
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$checkSelectedDownload$5$DownloadDialog(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 715
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 716
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->downloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->forgetMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)V

    .line 717
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->continueSelectedDownload(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)V

    return-void
.end method

.method public synthetic lambda$checkSelectedDownload$6$DownloadDialog(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;Landroid/net/Uri;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 727
    invoke-interface {p7}, Landroid/content/DialogInterface;->dismiss()V

    .line 730
    sget-object p7, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$3;->$SwitchMap$com$floatingtunes$youtubeplayer$topmusic$download$giga$service$MissionState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p7, p1

    const/4 p7, 0x1

    const p8, 0x7f110122

    if-eq p1, p7, :cond_2

    const/4 p7, 0x2

    if-eq p1, p7, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    goto :goto_1

    .line 753
    :cond_0
    invoke-virtual {p4, p5, p6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    move-result-object p1

    if-nez p1, :cond_1

    .line 755
    invoke-direct {p0, p8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->showFailedDialog(I)V

    goto :goto_1

    .line 757
    :cond_1
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->continueSelectedDownload(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)V

    goto :goto_1

    .line 733
    :cond_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->downloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->forgetMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)V

    :cond_3
    if-nez p3, :cond_4

    .line 736
    invoke-virtual {p4, p5, p6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    move-result-object p1

    goto :goto_0

    .line 740
    :cond_4
    :try_start_0
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->getTag()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p5, p3, p4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to take (or steal) the file in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadDialog"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 747
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->canWrite()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 748
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->continueSelectedDownload(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)V

    goto :goto_1

    .line 750
    :cond_5
    invoke-direct {p0, p8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->showFailedDialog(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$fetchStreamsSize$0$DownloadDialog(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 319
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v0, 0x7f0902d7

    if-ne p1, v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setupVideoSpinner()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$fetchStreamsSize$1$DownloadDialog(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 324
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v0, 0x7f090031

    if-ne p1, v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setupAudioSpinner()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$fetchStreamsSize$2$DownloadDialog(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v0, 0x7f090273

    if-ne p1, v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setupSubtitleSpinner()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initToolbar$3$DownloadDialog(Landroid/view/View;)V
    .locals 0

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$initToolbar$4$DownloadDialog(Landroid/view/MenuItem;)Z
    .locals 1

    .line 384
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0901bb

    if-ne p1, v0, :cond_0

    .line 386
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/util/FirebaseUtil;->addDownloadEvent()V

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setDownloadOneTime(Landroid/content/Context;)V

    .line 388
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->prepareSelectedDownload()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 349
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1230

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 352
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const p2, 0x7f11016b

    if-nez p1, :cond_0

    .line 353
    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-nez p1, :cond_1

    .line 359
    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 363
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->checkSelectedDownload(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f090031

    if-eq p2, p1, :cond_2

    const p1, 0x7f090273

    if-eq p2, p1, :cond_1

    const p1, 0x7f0902d7

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setupVideoSpinner()V

    goto :goto_0

    .line 437
    :cond_1
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setupSubtitleSpinner()V

    const/4 p1, 0x0

    goto :goto_1

    .line 431
    :cond_2
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setupAudioSpinner()V

    :goto_0
    const/4 p1, 0x1

    .line 442
    :goto_1
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->threadsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 175
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    .line 186
    invoke-static {p0, p1}, Licepick/Icepick;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 188
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 189
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedVideoStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 191
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 192
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedAudioStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-static {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->getAudioStreamFor(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Lorg/schabi/newpipe/extractor/stream/AudioStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 196
    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;

    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedAudioStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-direct {v3, v4, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_2
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedVideoStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-direct {v0, v1, v2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;-><init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->videoStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    .line 203
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedAudioStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-direct {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;-><init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->audioStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    .line 204
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedSubtitleStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-direct {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;-><init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    .line 206
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 209
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0c0068

    .line 265
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 337
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 338
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 857
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 859
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/DownloadDiaogEvent;

    invoke-direct {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/DownloadDiaogEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 861
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 862
    instance-of v1, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 863
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 453
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const p2, 0x7f090031

    if-eq p1, p2, :cond_2

    const p2, 0x7f090273

    if-eq p1, p2, :cond_1

    const p2, 0x7f0902d7

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedVideoIndex:I

    goto :goto_0

    .line 461
    :cond_1
    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedSubtitleIndex:I

    goto :goto_0

    .line 455
    :cond_2
    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedAudioIndex:I

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 343
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 344
    invoke-static {p0, p1}, Licepick/Icepick;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 270
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0900cd

    .line 271
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->nameEditText:Landroid/widget/EditText;

    .line 272
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilenameUtils;->createFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I

    move-result p2

    iput p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedAudioIndex:I

    .line 275
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getAll()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->getSubtitleIndexBy(Ljava/util/List;)I

    move-result p2

    iput p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedSubtitleIndex:I

    const p2, 0x7f0901e7

    .line 277
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->streamsSpinner:Landroid/widget/Spinner;

    .line 278
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->streamsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f09028c

    .line 280
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->threadsCountTextView:Landroid/widget/TextView;

    const p2, 0x7f09028b

    .line 281
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->threadsSeekBar:Landroid/widget/SeekBar;

    const p2, 0x7f0902d5

    .line 283
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    .line 284
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const p2, 0x7f090299

    .line 286
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->initToolbar(Landroidx/appcompat/widget/Toolbar;)V

    .line 287
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setupDownloadOptions()V

    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    .line 291
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    const p2, 0x7f1100c7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 292
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->threadsCountTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->threadsSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 294
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->threadsSeekBar:Landroid/widget/SeekBar;

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$2;

    invoke-direct {p2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 312
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->fetchStreamsSize()V

    return-void
.end method

.method public setAudioStreams(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedAudioStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    return-void
.end method

.method public setAudioStreams(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setAudioStreams(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)V

    return-void
.end method

.method public setSelectedVideoStream(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedVideoIndex:I

    return-void
.end method

.method public setSubtitleStreams(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedSubtitleStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    return-void
.end method

.method public setSubtitleStreams(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;)V"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setSubtitleStreams(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)V

    return-void
.end method

.method public setVideoStreams(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedVideoStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    return-void
.end method

.method public setVideoStreams(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;)V"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setVideoStreams(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)V

    return-void
.end method

.method protected setupDownloadOptions()V
    .locals 10

    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setRadioButtonsState(Z)V

    .line 477
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 478
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0902d7

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 479
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->radioStreamsGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f090273

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 480
    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->videoStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    invoke-virtual {v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 481
    :goto_0
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->audioStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    invoke-virtual {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 482
    :goto_1
    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;

    invoke-virtual {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/16 v8, 0x8

    if-eqz v6, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    const/16 v9, 0x8

    .line 484
    :goto_3
    invoke-virtual {v1, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    if-eqz v4, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    const/16 v9, 0x8

    .line 485
    :goto_4
    invoke-virtual {v2, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    if-eqz v7, :cond_5

    const/4 v8, 0x0

    .line 486
    :cond_5
    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    if-eqz v4, :cond_6

    .line 489
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 490
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setupVideoSpinner()V

    goto :goto_5

    :cond_6
    if-eqz v6, :cond_7

    .line 492
    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 493
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setupAudioSpinner()V

    goto :goto_5

    :cond_7
    if-eqz v7, :cond_8

    .line 495
    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 496
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setupSubtitleSpinner()V

    goto :goto_5

    .line 498
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11021e

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 499
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_5
    return-void
.end method

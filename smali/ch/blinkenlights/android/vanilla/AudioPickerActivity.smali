.class public Lch/blinkenlights/android/vanilla/AudioPickerActivity;
.super Lch/blinkenlights/android/vanilla/PlaybackActivity;
.source "AudioPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mEnqueueButton:Landroid/widget/Button;

.field private mPlayButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSong:Lch/blinkenlights/android/vanilla/Song;

.field private mTextView:Landroid/widget/TextView;

.field private mWorker:Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lch/blinkenlights/android/vanilla/AudioPickerActivity;Lch/blinkenlights/android/vanilla/Song;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->onSongResolved(Lch/blinkenlights/android/vanilla/Song;)V

    return-void
.end method

.method private onSongResolved(Lch/blinkenlights/android/vanilla/Song;)V
    .locals 2

    .line 162
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mSong:Lch/blinkenlights/android/vanilla/Song;

    if-nez p1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 171
    :cond_0
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mEnqueueButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    iget-object v0, p1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    const-string v1, ""

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 182
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 127
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->play:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 129
    :cond_0
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->enqueue:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    .line 138
    :goto_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mSong:Lch/blinkenlights/android/vanilla/Song;

    iget-wide v3, v0, Lch/blinkenlights/android/vanilla/Song;->id:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 139
    iget-object v0, v0, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    sget-object v1, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildFileQuery(Ljava/lang/String;[Ljava/lang/String;Z)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object v0

    goto :goto_1

    .line 141
    :cond_1
    sget-object v0, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v3, v4, v0, v2}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildQuery(IJ[Ljava/lang/String;Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object v0

    .line 144
    :goto_1
    iput p1, v0, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    .line 146
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    .line 147
    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->addSongs(Lch/blinkenlights/android/vanilla/QueryTask;)V

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 132
    :cond_2
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mWorker:Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;

    invoke-virtual {p1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 83
    :cond_0
    invoke-static {p0, p1}, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->requestPermissions(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 96
    :cond_2
    new-instance v0, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;-><init>(Lch/blinkenlights/android/vanilla/AudioPickerActivity;Lch/blinkenlights/android/vanilla/AudioPickerActivity$1;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mWorker:Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 100
    sget v1, Lch/blinkenlights/android/vanilla/R$layout;->audiopicker:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 103
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->cancel:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mCancelButton:Landroid/widget/Button;

    .line 104
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->enqueue:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mEnqueueButton:Landroid/widget/Button;

    .line 108
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mEnqueueButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->play:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mPlayButton:Landroid/widget/Button;

    .line 111
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->filepath:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mTextView:Landroid/widget/TextView;

    .line 114
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->progress:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 117
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/AudioPickerActivity;->mWorker:Lch/blinkenlights/android/vanilla/AudioPickerActivity$AudioPickerWorker;

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.class public Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SleepDialog.java"


# instance fields
.field seekBar:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;

.field switchCompat:Landroidx/appcompat/widget/SwitchCompat;

.field time_text:Landroid/widget/TextView;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->startUpdateTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;)Ljava/util/Timer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;I)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->formatSeconds(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createAddDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 4

    .line 40
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0065

    const/4 v3, 0x0

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const v2, 0x7f1102cb

    .line 45
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x7f090291

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->seekBar:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;

    const v2, 0x7f090292

    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->time_text:Landroid/widget/TextView;

    const v2, 0x7f090062

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->switchCompat:Landroidx/appcompat/widget/SwitchCompat;

    .line 50
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->seekBar:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$1;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;)V

    invoke-virtual {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->setOnSeekBarChangeListener(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;)V

    .line 68
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->switchCompat:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$2;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->updateUI()V

    return-object v0
.end method

.method private formatSeconds(I)Ljava/lang/String;
    .locals 6

    .line 156
    div-int/lit16 v0, p1, 0xe10

    .line 157
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 158
    rem-int/lit8 p1, p1, 0x3c

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 161
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "%02d:%02d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v5, 0x3

    .line 163
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private startUpdateTimer()V
    .locals 7

    .line 112
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->timer:Ljava/util/Timer;

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;)V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private updateUI()V
    .locals 4

    .line 98
    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->isRunning:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->switchCompat:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->seekBar:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;

    sget v1, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->remainingSeconds:I

    div-int/lit8 v1, v1, 0x3c

    div-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->setProgress(I)V

    .line 102
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->startUpdateTimer()V

    .line 103
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->time_text:Landroid/widget/TextView;

    sget v1, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->remainingSeconds:I

    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->formatSeconds(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->time_text:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->seekBar:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->getProgress()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f1102cc

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->createAddDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 169
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->seekBar:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->setProgress(I)V

    .line 173
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

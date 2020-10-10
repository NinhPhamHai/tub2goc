.class public Lch/blinkenlights/android/vanilla/TrackDetailsDialog;
.super Landroid/app/DialogFragment;
.source "TrackDetailsDialog.java"


# static fields
.field private static SONG_ID:Ljava/lang/String; = "song_id"


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(J)Lch/blinkenlights/android/vanilla/TrackDetailsDialog;
    .locals 3

    .line 50
    new-instance v0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;

    invoke-direct {v0}, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    sget-object v2, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;->SONG_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;J)V
    .locals 0

    .line 64
    invoke-static {p1, p2}, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;->newInstance(J)Lch/blinkenlights/android/vanilla/TrackDetailsDialog;

    move-result-object p1

    const-string p2, "TrackDetailsDialog"

    invoke-virtual {p1, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance p1, Landroid/os/HandlerThread;

    const-class v0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;->mHandlerThread:Landroid/os/HandlerThread;

    .line 71
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Landroid/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    .line 77
    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->fragment_track_details:I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 79
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 80
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->album:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 81
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->genre:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 82
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->track:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 83
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->year:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    .line 84
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->composer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    .line 85
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->path:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    .line 86
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->format:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;->SONG_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 89
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v15, p0

    iget-object v2, v15, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 90
    new-instance v3, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

    move-object v2, v3

    move-object v15, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v14}, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;-><init>(Lch/blinkenlights/android/vanilla/TrackDetailsDialog;JLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 122
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

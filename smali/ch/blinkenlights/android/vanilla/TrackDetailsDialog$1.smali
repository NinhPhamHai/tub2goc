.class Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;
.super Ljava/lang/Object;
.source "TrackDetailsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/TrackDetailsDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/TrackDetailsDialog;

.field final synthetic val$albumView:Landroid/widget/TextView;

.field final synthetic val$artistView:Landroid/widget/TextView;

.field final synthetic val$composerView:Landroid/widget/TextView;

.field final synthetic val$formatView:Landroid/widget/TextView;

.field final synthetic val$genreView:Landroid/widget/TextView;

.field final synthetic val$pathView:Landroid/widget/TextView;

.field final synthetic val$songId:J

.field final synthetic val$titleView:Landroid/widget/TextView;

.field final synthetic val$trackView:Landroid/widget/TextView;

.field final synthetic val$yearView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/TrackDetailsDialog;JLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->this$0:Lch/blinkenlights/android/vanilla/TrackDetailsDialog;

    iput-wide p2, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$songId:J

    iput-object p4, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$titleView:Landroid/widget/TextView;

    iput-object p5, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$artistView:Landroid/widget/TextView;

    iput-object p6, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$albumView:Landroid/widget/TextView;

    iput-object p7, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$genreView:Landroid/widget/TextView;

    iput-object p8, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$trackView:Landroid/widget/TextView;

    iput-object p9, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$yearView:Landroid/widget/TextView;

    iput-object p10, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$composerView:Landroid/widget/TextView;

    iput-object p11, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$pathView:Landroid/widget/TextView;

    iput-object p12, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$formatView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 93
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->this$0:Lch/blinkenlights/android/vanilla/TrackDetailsDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$songId:J

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Lch/blinkenlights/android/vanilla/MediaUtils;->getSongByTypeId(Landroid/content/Context;IJ)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance v1, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;

    iget-object v2, v0, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->this$0:Lch/blinkenlights/android/vanilla/TrackDetailsDialog;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;

    invoke-direct {v3, p0, v0, v1}, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;-><init>(Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;Lch/blinkenlights/android/vanilla/Song;Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

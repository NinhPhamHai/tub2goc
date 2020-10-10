.class Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;
.super Ljava/lang/Object;
.source "TrackDetailsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

.field final synthetic val$metadata:Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;

.field final synthetic val$song:Lch/blinkenlights/android/vanilla/Song;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;Lch/blinkenlights/android/vanilla/Song;Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->this$1:Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->val$song:Lch/blinkenlights/android/vanilla/Song;

    iput-object p3, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->val$metadata:Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 102
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->this$1:Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->val$song:Lch/blinkenlights/android/vanilla/Song;

    iget-object v1, v1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->this$1:Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$artistView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->val$song:Lch/blinkenlights/android/vanilla/Song;

    iget-object v1, v1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->this$1:Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$albumView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->val$song:Lch/blinkenlights/android/vanilla/Song;

    iget-object v1, v1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->this$1:Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$genreView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->val$metadata:Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;

    const-string v2, "GENRE"

    invoke-virtual {v1, v2}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->this$1:Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$trackView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->val$song:Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/Song;->getTrackAndDiscNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->this$1:Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$yearView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->val$metadata:Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;

    const-string v2, "YEAR"

    invoke-virtual {v1, v2}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->this$1:Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$composerView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->val$metadata:Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;

    const-string v2, "COMPOSER"

    invoke-virtual {v1, v2}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->this$1:Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$pathView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->val$song:Lch/blinkenlights/android/vanilla/Song;

    iget-object v1, v1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->this$1:Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1;->val$formatView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TrackDetailsDialog$1$1;->val$metadata:Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;

    invoke-virtual {v1}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.class Lch/blinkenlights/android/vanilla/PlaylistDialog$1;
.super Ljava/lang/Object;
.source "PlaylistDialog.java"

# interfaces
.implements Lch/blinkenlights/android/vanilla/PlaylistInputDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/PlaylistDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PlaylistDialog;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PlaylistDialog;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog$1;->this$0:Lch/blinkenlights/android/vanilla/PlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 127
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog$1;->this$0:Lch/blinkenlights/android/vanilla/PlaylistDialog;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/PlaylistDialog;->access$000(Lch/blinkenlights/android/vanilla/PlaylistDialog;)Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;

    move-result-object v0

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;->id:J

    .line 128
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog$1;->this$0:Lch/blinkenlights/android/vanilla/PlaylistDialog;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/PlaylistDialog;->access$000(Lch/blinkenlights/android/vanilla/PlaylistDialog;)Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;

    move-result-object v0

    iput-object p1, v0, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;->name:Ljava/lang/String;

    .line 129
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog$1;->this$0:Lch/blinkenlights/android/vanilla/PlaylistDialog;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/PlaylistDialog;->access$100(Lch/blinkenlights/android/vanilla/PlaylistDialog;)Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;

    move-result-object p1

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog$1;->this$0:Lch/blinkenlights/android/vanilla/PlaylistDialog;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/PlaylistDialog;->access$000(Lch/blinkenlights/android/vanilla/PlaylistDialog;)Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;

    move-result-object v0

    invoke-interface {p1, v0}, Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;->updatePlaylistFromPlaylistDialog(Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;)V

    return-void
.end method

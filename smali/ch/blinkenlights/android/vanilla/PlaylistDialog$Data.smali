.class public Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;
.super Ljava/lang/Object;
.source "PlaylistDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/PlaylistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field public allSource:Lch/blinkenlights/android/vanilla/LibraryAdapter;

.field public id:J

.field public name:Ljava/lang/String;

.field public sourceIntent:Landroid/content/Intent;

.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PlaylistDialog;


# direct methods
.method public constructor <init>(Lch/blinkenlights/android/vanilla/PlaylistDialog;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;->this$0:Lch/blinkenlights/android/vanilla/PlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

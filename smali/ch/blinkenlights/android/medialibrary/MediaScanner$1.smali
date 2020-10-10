.class Lch/blinkenlights/android/medialibrary/MediaScanner$1;
.super Landroid/database/ContentObserver;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/medialibrary/MediaScanner;-><init>(Landroid/content/Context;Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/medialibrary/MediaScanner;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/medialibrary/MediaScanner;Landroid/os/Handler;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$1;->this$0:Lch/blinkenlights/android/medialibrary/MediaScanner;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 111
    iget-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner$1;->this$0:Lch/blinkenlights/android/medialibrary/MediaScanner;

    const/16 v0, 0xdac

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->startQuickScan(I)V

    return-void
.end method

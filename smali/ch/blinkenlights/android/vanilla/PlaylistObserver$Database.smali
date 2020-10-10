.class Lch/blinkenlights/android/vanilla/PlaylistObserver$Database;
.super Ljava/lang/Object;
.source "PlaylistObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/PlaylistObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Database"
.end annotation


# static fields
.field static final FILLED_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "hash"

    .line 107
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/PlaylistObserver$Database;->FILLED_PROJECTION:[Ljava/lang/String;

    return-void
.end method

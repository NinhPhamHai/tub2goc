.class public Lch/blinkenlights/android/vanilla/QueryTask;
.super Ljava/lang/Object;
.source "QueryTask.java"


# instance fields
.field public data:J

.field public mode:I

.field public final projection:[Ljava/lang/String;

.field public final selection:Ljava/lang/String;

.field public final selectionArgs:[Ljava/lang/String;

.field public sortOrder:Ljava/lang/String;

.field public final table:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/QueryTask;->table:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lch/blinkenlights/android/vanilla/QueryTask;->projection:[Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lch/blinkenlights/android/vanilla/QueryTask;->selection:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lch/blinkenlights/android/vanilla/QueryTask;->selectionArgs:[Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lch/blinkenlights/android/vanilla/QueryTask;->sortOrder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public runQuery(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    .line 71
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/QueryTask;->table:Ljava/lang/String;

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/QueryTask;->projection:[Ljava/lang/String;

    iget-object v3, p0, Lch/blinkenlights/android/vanilla/QueryTask;->selection:Ljava/lang/String;

    iget-object v4, p0, Lch/blinkenlights/android/vanilla/QueryTask;->selectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lch/blinkenlights/android/vanilla/QueryTask;->sortOrder:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

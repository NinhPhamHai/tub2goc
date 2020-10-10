.class final synthetic Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$8;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field private final arg$1:[Z

.field private final arg$2:Landroid/database/sqlite/SQLiteStatement;

.field private final arg$3:J


# direct methods
.method private constructor <init>([ZLandroid/database/sqlite/SQLiteStatement;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$8;->arg$1:[Z

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$8;->arg$2:Landroid/database/sqlite/SQLiteStatement;

    iput-wide p3, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$8;->arg$3:J

    return-void
.end method

.method public static lambdaFactory$([ZLandroid/database/sqlite/SQLiteStatement;J)Lcom/google/firebase/firestore/util/Consumer;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$8;-><init>([ZLandroid/database/sqlite/SQLiteStatement;J)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$8;->arg$1:[Z

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$8;->arg$2:Landroid/database/sqlite/SQLiteStatement;

    iget-wide v2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$8;->arg$3:J

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->lambda$ensureSequenceNumbers$8([ZLandroid/database/sqlite/SQLiteStatement;JLandroid/database/Cursor;)V

    return-void
.end method

.class public Lorg/greenrobot/greendao/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field public final columnName:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final ordinal:I

.field public final primaryKey:Z

.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lorg/greenrobot/greendao/Property;->ordinal:I

    .line 39
    iput-object p2, p0, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    .line 40
    iput-object p3, p0, Lorg/greenrobot/greendao/Property;->name:Ljava/lang/String;

    .line 41
    iput-boolean p4, p0, Lorg/greenrobot/greendao/Property;->primaryKey:Z

    .line 42
    iput-object p5, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2

    .line 47
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v1, "=?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2

    .line 52
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v1, "<>?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public varargs notIn([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " NOT IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    array-length v1, p1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendPlaceholders(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    new-instance v1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

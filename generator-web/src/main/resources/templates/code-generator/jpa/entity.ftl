package ${packageName}.entity;

import lombok.Data;
import java.util.Date;
import java.util.List;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
*  ${classInfo.classComment}
* @author ${authorName} ${.now?string('yyyy-MM-dd')}
*/
@Entity
@Data
@Table(name="${classInfo.tableName}")
@ApiModel("${classInfo.classComment}")
public class ${classInfo.className} implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue
<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem >
    /**
    * ${fieldItem.fieldComment}
    */
    @ApiModelProperty("${fieldItem.fieldComment}")
    @Column("${fieldItem.columnName}")
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};

</#list>
    public ${classInfo.className}() {
    }
</#if>

}

package com.monkey.wx.domain;

import java.util.ArrayList;
import java.util.List;

public class WxUserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WxUserExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("id like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("id not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("title not between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andWxNameIsNull() {
            addCriterion("wx_name is null");
            return (Criteria) this;
        }

        public Criteria andWxNameIsNotNull() {
            addCriterion("wx_name is not null");
            return (Criteria) this;
        }

        public Criteria andWxNameEqualTo(String value) {
            addCriterion("wx_name =", value, "wxName");
            return (Criteria) this;
        }

        public Criteria andWxNameNotEqualTo(String value) {
            addCriterion("wx_name <>", value, "wxName");
            return (Criteria) this;
        }

        public Criteria andWxNameGreaterThan(String value) {
            addCriterion("wx_name >", value, "wxName");
            return (Criteria) this;
        }

        public Criteria andWxNameGreaterThanOrEqualTo(String value) {
            addCriterion("wx_name >=", value, "wxName");
            return (Criteria) this;
        }

        public Criteria andWxNameLessThan(String value) {
            addCriterion("wx_name <", value, "wxName");
            return (Criteria) this;
        }

        public Criteria andWxNameLessThanOrEqualTo(String value) {
            addCriterion("wx_name <=", value, "wxName");
            return (Criteria) this;
        }

        public Criteria andWxNameLike(String value) {
            addCriterion("wx_name like", value, "wxName");
            return (Criteria) this;
        }

        public Criteria andWxNameNotLike(String value) {
            addCriterion("wx_name not like", value, "wxName");
            return (Criteria) this;
        }

        public Criteria andWxNameIn(List<String> values) {
            addCriterion("wx_name in", values, "wxName");
            return (Criteria) this;
        }

        public Criteria andWxNameNotIn(List<String> values) {
            addCriterion("wx_name not in", values, "wxName");
            return (Criteria) this;
        }

        public Criteria andWxNameBetween(String value1, String value2) {
            addCriterion("wx_name between", value1, value2, "wxName");
            return (Criteria) this;
        }

        public Criteria andWxNameNotBetween(String value1, String value2) {
            addCriterion("wx_name not between", value1, value2, "wxName");
            return (Criteria) this;
        }

        public Criteria andContactNameIsNull() {
            addCriterion("contact_name is null");
            return (Criteria) this;
        }

        public Criteria andContactNameIsNotNull() {
            addCriterion("contact_name is not null");
            return (Criteria) this;
        }

        public Criteria andContactNameEqualTo(String value) {
            addCriterion("contact_name =", value, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactNameNotEqualTo(String value) {
            addCriterion("contact_name <>", value, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactNameGreaterThan(String value) {
            addCriterion("contact_name >", value, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactNameGreaterThanOrEqualTo(String value) {
            addCriterion("contact_name >=", value, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactNameLessThan(String value) {
            addCriterion("contact_name <", value, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactNameLessThanOrEqualTo(String value) {
            addCriterion("contact_name <=", value, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactNameLike(String value) {
            addCriterion("contact_name like", value, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactNameNotLike(String value) {
            addCriterion("contact_name not like", value, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactNameIn(List<String> values) {
            addCriterion("contact_name in", values, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactNameNotIn(List<String> values) {
            addCriterion("contact_name not in", values, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactNameBetween(String value1, String value2) {
            addCriterion("contact_name between", value1, value2, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactNameNotBetween(String value1, String value2) {
            addCriterion("contact_name not between", value1, value2, "contactName");
            return (Criteria) this;
        }

        public Criteria andContactPhoneIsNull() {
            addCriterion("contact_phone is null");
            return (Criteria) this;
        }

        public Criteria andContactPhoneIsNotNull() {
            addCriterion("contact_phone is not null");
            return (Criteria) this;
        }

        public Criteria andContactPhoneEqualTo(String value) {
            addCriterion("contact_phone =", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotEqualTo(String value) {
            addCriterion("contact_phone <>", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneGreaterThan(String value) {
            addCriterion("contact_phone >", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("contact_phone >=", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneLessThan(String value) {
            addCriterion("contact_phone <", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneLessThanOrEqualTo(String value) {
            addCriterion("contact_phone <=", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneLike(String value) {
            addCriterion("contact_phone like", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotLike(String value) {
            addCriterion("contact_phone not like", value, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneIn(List<String> values) {
            addCriterion("contact_phone in", values, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotIn(List<String> values) {
            addCriterion("contact_phone not in", values, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneBetween(String value1, String value2) {
            addCriterion("contact_phone between", value1, value2, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andContactPhoneNotBetween(String value1, String value2) {
            addCriterion("contact_phone not between", value1, value2, "contactPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneIsNull() {
            addCriterion("kf_phone is null");
            return (Criteria) this;
        }

        public Criteria andKfPhoneIsNotNull() {
            addCriterion("kf_phone is not null");
            return (Criteria) this;
        }

        public Criteria andKfPhoneEqualTo(String value) {
            addCriterion("kf_phone =", value, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneNotEqualTo(String value) {
            addCriterion("kf_phone <>", value, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneGreaterThan(String value) {
            addCriterion("kf_phone >", value, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("kf_phone >=", value, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneLessThan(String value) {
            addCriterion("kf_phone <", value, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneLessThanOrEqualTo(String value) {
            addCriterion("kf_phone <=", value, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneLike(String value) {
            addCriterion("kf_phone like", value, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneNotLike(String value) {
            addCriterion("kf_phone not like", value, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneIn(List<String> values) {
            addCriterion("kf_phone in", values, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneNotIn(List<String> values) {
            addCriterion("kf_phone not in", values, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneBetween(String value1, String value2) {
            addCriterion("kf_phone between", value1, value2, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfPhoneNotBetween(String value1, String value2) {
            addCriterion("kf_phone not between", value1, value2, "kfPhone");
            return (Criteria) this;
        }

        public Criteria andKfWxIsNull() {
            addCriterion("kf_wx is null");
            return (Criteria) this;
        }

        public Criteria andKfWxIsNotNull() {
            addCriterion("kf_wx is not null");
            return (Criteria) this;
        }

        public Criteria andKfWxEqualTo(String value) {
            addCriterion("kf_wx =", value, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxNotEqualTo(String value) {
            addCriterion("kf_wx <>", value, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxGreaterThan(String value) {
            addCriterion("kf_wx >", value, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxGreaterThanOrEqualTo(String value) {
            addCriterion("kf_wx >=", value, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxLessThan(String value) {
            addCriterion("kf_wx <", value, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxLessThanOrEqualTo(String value) {
            addCriterion("kf_wx <=", value, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxLike(String value) {
            addCriterion("kf_wx like", value, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxNotLike(String value) {
            addCriterion("kf_wx not like", value, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxIn(List<String> values) {
            addCriterion("kf_wx in", values, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxNotIn(List<String> values) {
            addCriterion("kf_wx not in", values, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxBetween(String value1, String value2) {
            addCriterion("kf_wx between", value1, value2, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxNotBetween(String value1, String value2) {
            addCriterion("kf_wx not between", value1, value2, "kfWx");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmIsNull() {
            addCriterion("kf_wx_ewm is null");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmIsNotNull() {
            addCriterion("kf_wx_ewm is not null");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmEqualTo(String value) {
            addCriterion("kf_wx_ewm =", value, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmNotEqualTo(String value) {
            addCriterion("kf_wx_ewm <>", value, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmGreaterThan(String value) {
            addCriterion("kf_wx_ewm >", value, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmGreaterThanOrEqualTo(String value) {
            addCriterion("kf_wx_ewm >=", value, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmLessThan(String value) {
            addCriterion("kf_wx_ewm <", value, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmLessThanOrEqualTo(String value) {
            addCriterion("kf_wx_ewm <=", value, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmLike(String value) {
            addCriterion("kf_wx_ewm like", value, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmNotLike(String value) {
            addCriterion("kf_wx_ewm not like", value, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmIn(List<String> values) {
            addCriterion("kf_wx_ewm in", values, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmNotIn(List<String> values) {
            addCriterion("kf_wx_ewm not in", values, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmBetween(String value1, String value2) {
            addCriterion("kf_wx_ewm between", value1, value2, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andKfWxEwmNotBetween(String value1, String value2) {
            addCriterion("kf_wx_ewm not between", value1, value2, "kfWxEwm");
            return (Criteria) this;
        }

        public Criteria andBillNameIsNull() {
            addCriterion("bill_name is null");
            return (Criteria) this;
        }

        public Criteria andBillNameIsNotNull() {
            addCriterion("bill_name is not null");
            return (Criteria) this;
        }

        public Criteria andBillNameEqualTo(String value) {
            addCriterion("bill_name =", value, "billName");
            return (Criteria) this;
        }

        public Criteria andBillNameNotEqualTo(String value) {
            addCriterion("bill_name <>", value, "billName");
            return (Criteria) this;
        }

        public Criteria andBillNameGreaterThan(String value) {
            addCriterion("bill_name >", value, "billName");
            return (Criteria) this;
        }

        public Criteria andBillNameGreaterThanOrEqualTo(String value) {
            addCriterion("bill_name >=", value, "billName");
            return (Criteria) this;
        }

        public Criteria andBillNameLessThan(String value) {
            addCriterion("bill_name <", value, "billName");
            return (Criteria) this;
        }

        public Criteria andBillNameLessThanOrEqualTo(String value) {
            addCriterion("bill_name <=", value, "billName");
            return (Criteria) this;
        }

        public Criteria andBillNameLike(String value) {
            addCriterion("bill_name like", value, "billName");
            return (Criteria) this;
        }

        public Criteria andBillNameNotLike(String value) {
            addCriterion("bill_name not like", value, "billName");
            return (Criteria) this;
        }

        public Criteria andBillNameIn(List<String> values) {
            addCriterion("bill_name in", values, "billName");
            return (Criteria) this;
        }

        public Criteria andBillNameNotIn(List<String> values) {
            addCriterion("bill_name not in", values, "billName");
            return (Criteria) this;
        }

        public Criteria andBillNameBetween(String value1, String value2) {
            addCriterion("bill_name between", value1, value2, "billName");
            return (Criteria) this;
        }

        public Criteria andBillNameNotBetween(String value1, String value2) {
            addCriterion("bill_name not between", value1, value2, "billName");
            return (Criteria) this;
        }

        public Criteria andBillKeyIsNull() {
            addCriterion("bill_key is null");
            return (Criteria) this;
        }

        public Criteria andBillKeyIsNotNull() {
            addCriterion("bill_key is not null");
            return (Criteria) this;
        }

        public Criteria andBillKeyEqualTo(String value) {
            addCriterion("bill_key =", value, "billKey");
            return (Criteria) this;
        }

        public Criteria andBillKeyNotEqualTo(String value) {
            addCriterion("bill_key <>", value, "billKey");
            return (Criteria) this;
        }

        public Criteria andBillKeyGreaterThan(String value) {
            addCriterion("bill_key >", value, "billKey");
            return (Criteria) this;
        }

        public Criteria andBillKeyGreaterThanOrEqualTo(String value) {
            addCriterion("bill_key >=", value, "billKey");
            return (Criteria) this;
        }

        public Criteria andBillKeyLessThan(String value) {
            addCriterion("bill_key <", value, "billKey");
            return (Criteria) this;
        }

        public Criteria andBillKeyLessThanOrEqualTo(String value) {
            addCriterion("bill_key <=", value, "billKey");
            return (Criteria) this;
        }

        public Criteria andBillKeyLike(String value) {
            addCriterion("bill_key like", value, "billKey");
            return (Criteria) this;
        }

        public Criteria andBillKeyNotLike(String value) {
            addCriterion("bill_key not like", value, "billKey");
            return (Criteria) this;
        }

        public Criteria andBillKeyIn(List<String> values) {
            addCriterion("bill_key in", values, "billKey");
            return (Criteria) this;
        }

        public Criteria andBillKeyNotIn(List<String> values) {
            addCriterion("bill_key not in", values, "billKey");
            return (Criteria) this;
        }

        public Criteria andBillKeyBetween(String value1, String value2) {
            addCriterion("bill_key between", value1, value2, "billKey");
            return (Criteria) this;
        }

        public Criteria andBillKeyNotBetween(String value1, String value2) {
            addCriterion("bill_key not between", value1, value2, "billKey");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(String value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(String value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(String value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(String value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(String value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(String value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLike(String value) {
            addCriterion("create_time like", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotLike(String value) {
            addCriterion("create_time not like", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<String> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<String> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(String value1, String value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(String value1, String value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateUserIsNull() {
            addCriterion("create_user is null");
            return (Criteria) this;
        }

        public Criteria andCreateUserIsNotNull() {
            addCriterion("create_user is not null");
            return (Criteria) this;
        }

        public Criteria andCreateUserEqualTo(String value) {
            addCriterion("create_user =", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserNotEqualTo(String value) {
            addCriterion("create_user <>", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserGreaterThan(String value) {
            addCriterion("create_user >", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserGreaterThanOrEqualTo(String value) {
            addCriterion("create_user >=", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserLessThan(String value) {
            addCriterion("create_user <", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserLessThanOrEqualTo(String value) {
            addCriterion("create_user <=", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserLike(String value) {
            addCriterion("create_user like", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserNotLike(String value) {
            addCriterion("create_user not like", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserIn(List<String> values) {
            addCriterion("create_user in", values, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserNotIn(List<String> values) {
            addCriterion("create_user not in", values, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserBetween(String value1, String value2) {
            addCriterion("create_user between", value1, value2, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserNotBetween(String value1, String value2) {
            addCriterion("create_user not between", value1, value2, "createUser");
            return (Criteria) this;
        }

        public Criteria andChannelPersonIsNull() {
            addCriterion("channel_person is null");
            return (Criteria) this;
        }

        public Criteria andChannelPersonIsNotNull() {
            addCriterion("channel_person is not null");
            return (Criteria) this;
        }

        public Criteria andChannelPersonEqualTo(String value) {
            addCriterion("channel_person =", value, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andChannelPersonNotEqualTo(String value) {
            addCriterion("channel_person <>", value, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andChannelPersonGreaterThan(String value) {
            addCriterion("channel_person >", value, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andChannelPersonGreaterThanOrEqualTo(String value) {
            addCriterion("channel_person >=", value, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andChannelPersonLessThan(String value) {
            addCriterion("channel_person <", value, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andChannelPersonLessThanOrEqualTo(String value) {
            addCriterion("channel_person <=", value, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andChannelPersonLike(String value) {
            addCriterion("channel_person like", value, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andChannelPersonNotLike(String value) {
            addCriterion("channel_person not like", value, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andChannelPersonIn(List<String> values) {
            addCriterion("channel_person in", values, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andChannelPersonNotIn(List<String> values) {
            addCriterion("channel_person not in", values, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andChannelPersonBetween(String value1, String value2) {
            addCriterion("channel_person between", value1, value2, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andChannelPersonNotBetween(String value1, String value2) {
            addCriterion("channel_person not between", value1, value2, "channelPerson");
            return (Criteria) this;
        }

        public Criteria andConfigIdIsNull() {
            addCriterion("config_id is null");
            return (Criteria) this;
        }

        public Criteria andConfigIdIsNotNull() {
            addCriterion("config_id is not null");
            return (Criteria) this;
        }

        public Criteria andConfigIdEqualTo(String value) {
            addCriterion("config_id =", value, "configId");
            return (Criteria) this;
        }

        public Criteria andConfigIdNotEqualTo(String value) {
            addCriterion("config_id <>", value, "configId");
            return (Criteria) this;
        }

        public Criteria andConfigIdGreaterThan(String value) {
            addCriterion("config_id >", value, "configId");
            return (Criteria) this;
        }

        public Criteria andConfigIdGreaterThanOrEqualTo(String value) {
            addCriterion("config_id >=", value, "configId");
            return (Criteria) this;
        }

        public Criteria andConfigIdLessThan(String value) {
            addCriterion("config_id <", value, "configId");
            return (Criteria) this;
        }

        public Criteria andConfigIdLessThanOrEqualTo(String value) {
            addCriterion("config_id <=", value, "configId");
            return (Criteria) this;
        }

        public Criteria andConfigIdLike(String value) {
            addCriterion("config_id like", value, "configId");
            return (Criteria) this;
        }

        public Criteria andConfigIdNotLike(String value) {
            addCriterion("config_id not like", value, "configId");
            return (Criteria) this;
        }

        public Criteria andConfigIdIn(List<String> values) {
            addCriterion("config_id in", values, "configId");
            return (Criteria) this;
        }

        public Criteria andConfigIdNotIn(List<String> values) {
            addCriterion("config_id not in", values, "configId");
            return (Criteria) this;
        }

        public Criteria andConfigIdBetween(String value1, String value2) {
            addCriterion("config_id between", value1, value2, "configId");
            return (Criteria) this;
        }

        public Criteria andConfigIdNotBetween(String value1, String value2) {
            addCriterion("config_id not between", value1, value2, "configId");
            return (Criteria) this;
        }

        public Criteria andDelFlagIsNull() {
            addCriterion("del_flag is null");
            return (Criteria) this;
        }

        public Criteria andDelFlagIsNotNull() {
            addCriterion("del_flag is not null");
            return (Criteria) this;
        }

        public Criteria andDelFlagEqualTo(Integer value) {
            addCriterion("del_flag =", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagNotEqualTo(Integer value) {
            addCriterion("del_flag <>", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagGreaterThan(Integer value) {
            addCriterion("del_flag >", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("del_flag >=", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagLessThan(Integer value) {
            addCriterion("del_flag <", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagLessThanOrEqualTo(Integer value) {
            addCriterion("del_flag <=", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagIn(List<Integer> values) {
            addCriterion("del_flag in", values, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagNotIn(List<Integer> values) {
            addCriterion("del_flag not in", values, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagBetween(Integer value1, Integer value2) {
            addCriterion("del_flag between", value1, value2, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("del_flag not between", value1, value2, "delFlag");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}
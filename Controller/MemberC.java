<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="Member">

<!-- 회원가입 -->
	<insert id="join" parameterType="mvo">
		INSERT INTO
		w9_member (id, pw, nick, email)
		VALUES (#{id}, #{pw}, #{nick}, #{email})
	</insert>
	
<!-- 회원탈퇴 -->
	<delete id="withdrawal">
		DELETE
		FROM w9_member
		WHERE id = #{id}
	</delete>
	
<!-- 회원정보수정 -->
	<update id="infoupd" parameterType="mvo">
		UPDATE w9_member
		SET nick = #{nick}, email = #{email}
		WHERE id = #{id}
	</update>
	
<!-- 로그인 -->
	<select id="login" parameterType="mvo" resultType="mvo">
		SELECT id, nick, email, joindate
		FROM w9_member
		WHERE id = #{id} AND pw = #{pw}
	</select>
	
</mapper>
